provider "aws" {
  region = "ap-south-1"
}

variable "aws_key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

resource "aws_security_group" "strapi_sg" {
  name        = "strapi-sg-new"
  description = "Allow HTTP traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Strapi-SG-New"
  }
}

resource "aws_instance" "strapi_ec2" {
  ami           = "ami-0f5ee92e2d63afc18" # Ubuntu 22.04 LTS (Mumbai)
  instance_type = "t2.micro"
  key_name      = "vpc-01b35def73b166fdc"

  vpc_security_group_ids = [aws_security_group.strapi_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install docker.io -y
    systemctl start docker
    docker run -d -p 80:1337 preeti926/script-smiths-strapi:latest
  EOF

  tags = {
    Name = "Strapi-EC2"
  }
}

output "instance_public_ip" {
  value = aws_instance.strapi_ec2.public_ip
}