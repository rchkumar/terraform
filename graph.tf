/*

resource "aws_eip" "myeip" {
  instance = "aws_instance.myec2instance.id"
  vpc = true

}

resource "aws_instance" "myec2instance" {

  ami = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  tags = {
    Name = "Helloworld"
  }
}

resource "aws_security_group" "ram_sg" {

  name = "allow_tls"
  ingress {
    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = ["${aws_eip.myeip.private_ip}/32"]
  }

}


*/