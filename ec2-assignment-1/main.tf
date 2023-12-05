provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "windows" {
  instance_type = "t2.micro"
  ami = "ami-093693792d26e4373"
}