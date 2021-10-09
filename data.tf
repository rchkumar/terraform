/*
provider "aws" {
  region = "us-east-1"
  profile = "default"

}

data "aws_ami" "app-ami" {
  owners = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  ami = data.aws_ami.app-ami.id
  instance_type = "t2.micro"

}

*/