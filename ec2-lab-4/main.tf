provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tags-test" {
  instance_type = "t2.micro"
  ami = "ami-0fa1ca9559f1892ec"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 40
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.example.id
  instance_id = aws_instance.tags-test.id
}