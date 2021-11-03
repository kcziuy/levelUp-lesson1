resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "kp" {
  key_name = "key1"
  public_key = tls_private_key.pk.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > key.pem"
  }
}

resource "aws_instance" "debian-vm-1" {
  ami = "ami-0623a3b0ec93b4fb7"
  key_name = aws_key_pair.kp.key_name
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstDebian"
  }
}