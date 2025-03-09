# Terraform Settings Block
#VPS -> create default
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production (current version:  v5.90.0.)
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-central-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0b74f796d330ab49c" #EC2 -> instances -> launch-instance -> ami
  instance_type = "t2.micro"
}