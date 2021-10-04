/*

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
  #security_groups = [allow_tls]
}

resource "aws_eip_association" "eip_assoc" {

  instance_id = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id

}

resource "aws_security_group" "allow_tls" {

  name = "allow_tls"

  ingress {
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }

}

*/