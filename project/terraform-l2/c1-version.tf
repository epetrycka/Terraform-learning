terraform {
  required_version = "~> 1.11"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.90"
    }
  }
}

provider "aws" {
  profile = "default" // optional, default user is set by default
  region = "eu-central-1"
}