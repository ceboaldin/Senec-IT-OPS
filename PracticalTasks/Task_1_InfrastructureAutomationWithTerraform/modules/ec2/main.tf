# Pull latest Ubuntu 22.04
data "aws_ami" "latest_ubuntu_linux_image" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "ec2_ubuntu_image" {
  ami           = data.aws_ami.latest_ubuntu_linux_image.id
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "MyPublicInstance"
  }
}

