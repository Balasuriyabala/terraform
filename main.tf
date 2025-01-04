provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "insecure_instance" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "InsecureInstance"
  }

  # Hardcoded key pair
  key_name = "hardcoded-key"

  # Security group with overly permissive rules
  vpc_security_group_ids = [aws_security_group.insecure_sg.id]

  # Hardcoded user data
  user_data = <<EOT
#!/bin/bash
echo "password123" > /tmp/password.txt
EOT
}

resource "aws_security_group" "insecure_sg" {
  name        = "insecure-sg"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Open to the world
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
