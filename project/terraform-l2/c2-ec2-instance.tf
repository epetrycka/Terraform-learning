resource "aws_instance" "ec2Demo" {
  ami = "ami-0b74f796d330ab49c"
  instance_type = "t2.micro"
}