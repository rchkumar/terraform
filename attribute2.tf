provider "aws" {
  region = "us-east-1"
  profile = "default"

}

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_instance" "myec2" {

  ami = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
}

resource "aws_eip_association" "eip_assoc" {

  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id

}