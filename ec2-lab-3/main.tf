provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tags-test" {
  instance_type = "t2.micro"
  ami = "ami-0fa1ca9559f1892ec"
  tags = {
    Name = "test"
    environment = "dev"
  }
}