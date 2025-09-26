provider "aws" {
  region = var.aws_region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.aws_key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "strapi_sg" {
  name        = "strapi-sg-preeti"
  description = "Allow SSH and Strapi access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi_ec2" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  key_name               = var.aws_key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.strapi_sg.id]

  tags = {
    Name = "Strapi-EC2"
  }

  user_data = <<-EOT
    #!/bin/bash
    apt update -y
    apt install docker.io -y
    systemctl start docker
    docker pull ${var.image_tag}
    docker run -d -p 1337:1337 ${var.image_tag}
  EOT
}



output "instance_public_ip" {
  value = aws_instance.strapi_ec2.public_ip
}