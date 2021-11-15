resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  key_name   = "key1"
  public_key = tls_private_key.pk.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > key.pem"
  }
  provisioner "local-exec" {
    command = "cp key.pem ~/.ssh/"
  }
  provisioner "local-exec" {
    command = "chmod 700 ~/.ssh/key.pem"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_security_group" "ubuntu-vm-security" {
  name   = "allow-all"
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
  }
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
  }
  // Terraform removes the default rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "ubuntu-master" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.kp.key_name
  instance_type = "t2.micro"
  security_groups = [ "allow-all" ]

  tags = {
    Name = "Master"
  }
  
  provisioner "remote-exec" {
    connection {
      host = aws_instance.ubuntu-master.public_ip
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo apt update", 
              "sudo apt install rsyslog", 
              "sudo service rsyslog start", 
              "echo ${aws_key_pair.kp.public_key} > ~/.ssh/mainkey",
              "sudo sed -i 's/#module(load=\"imtcp\")/module(load=\"imtcp\")/g' /etc/rsyslog.conf",
              "sudo sed -i 's/#input(type=\"imtcp\" port=\"514\")/input(type=\"imtcp\" port=\"514\")/g' /etc/rsyslog.conf",
              "sudo service rsyslog restart" ] 
  }
}

resource "aws_instance" "ubuntu-slave" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.kp.key_name
  instance_type = "t2.micro"
  security_groups = [ "allow-all" ]

  tags = {
    Name = "Slave"
  }

  provisioner "remote-exec" {
    connection {
      host = aws_instance.ubuntu-slave.public_ip
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo mkdir /opt/mylog", "sudo chmod 777 /opt/mylog", "echo ${aws_key_pair.kp.public_key} > ~/.ssh/mainkey"] 
  }
  provisioner "local-exec" {
    command = "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem datetimelog.sh ubuntu@${aws_instance.ubuntu-slave.public_ip}:/opt/mylog/"
  }
  provisioner "local-exec" {
    command = "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem mylog.service ubuntu@${aws_instance.ubuntu-slave.public_ip}:~/"
  }
  provisioner "remote-exec" {
    connection {
      host = aws_instance.ubuntu-slave.public_ip
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo cp ~/mylog.service /etc/systemd/system/", 
              "sudo service mylog start", 
              "sudo systemctl enable mylog.service", 
              "sudo apt update", 
              "sudo apt install rsyslog",
              "sudo service rsyslog start"] 
  }
  provisioner "local-exec" {
    command = "scp -o StrictHostKeyChecking=no -i ~/.ssh/key.pem mylog.conf ubuntu@${aws_instance.ubuntu-slave.public_ip}:~/"
  }
  provisioner "remote-exec" {
    connection {
      host = aws_instance.ubuntu-slave.public_ip
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo cp ~/mylog.conf /etc/rsyslog.d/", 
              "sudo sed -i 's/#module(load=\"imtcp\")/module(load=\"imtcp\")/g' /etc/rsyslog.conf",
              "sudo sed -i 's/#input(type=\"imtcp\" port=\"514\")/input(type=\"imtcp\" port=\"514\")/g' /etc/rsyslog.conf",
              "sudo echo \"*.* @@${aws_instance.ubuntu-master.public_ip}:514\" | sudo tee /etc/rsyslog.conf",
              "sudo service rsyslog restart"] 
  }
}
