terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

resource "aws_instance" "Ansible" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
}
resource "aws_instance" "Jenkins" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t3.small"
}
resource "aws_instance" "minikube" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t3.small"
}
