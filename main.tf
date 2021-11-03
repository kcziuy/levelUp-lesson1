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
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  # filter {
  #   name   = "virtualization-type"
  #   values = ["hvm"]
  # }

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

resource "aws_instance" "ubuntu-vm" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.kp.key_name
  instance_type = "t2.micro"
  security_groups = [ "allow-all" ]

  tags = {
    Name = "MyFirstUbuntu"
  }

  provisioner "remote-exec" {
    connection {
      host = aws_instance.ubuntu-vm.public_ip
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo apt update", "sudo apt install -y openssh-server nginx", "sudo service nginx start"] // as root default
  }
}