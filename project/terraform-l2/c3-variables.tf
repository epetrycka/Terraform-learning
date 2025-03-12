#Input variables
#AWS region
variable "aws_region" {
    description = "Region in which AWS resources to be created"
    type = string
    default = "eu-central-1"   
}

#AWS Instance
variable "aws_instance" {
    description = "AWS EC2 Instance type"
    type = string
    default = "t3.micro"
}

#AWS key-pair
variable "aws_keypair" {
    description = "AWS EC2 key pair that need to be associated with EC2 Instance"
    type = string
    default = "terraform-key"
}