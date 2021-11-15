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
    cidr_blocks = ["0.0.0.0/24"]
  }
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "tf-vpc-example"
  }
}

resource "aws_subnet" "sn" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "tf-vpc-subnet-example"
  }
}

resource "aws_network_interface" "ni" {
  subnet_id   = aws_subnet.sn.id
  private_ips = ["10.0.0.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "ubuntu-vm" {
  count = 2
  ami           = data.aws_ami.ubuntu.id
  key_name      = aws_key_pair.kp.key_name
  instance_type = "t2.micro"
  #security_groups = [ "allow-all" ]

  tags = {
    Name = "UbuntuServer"
  }

  network_interface {
    network_interface_id = aws_network_interface.ni.id
    device_index         = 0
  }

  provisioner "remote-exec" {
    connection {
      host = "${self.public_ip}"
      user = "ubuntu"
      private_key = tls_private_key.pk.private_key_pem
    }
    inline = ["sudo apt update", "sudo apt install -y nginx", "sudo service nginx start"] // as root default
  }
}