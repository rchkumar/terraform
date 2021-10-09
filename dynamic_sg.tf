/*

provider "aws" {
  region = "us-east-1"
  profile = "default"

}

resource "aws_instance" "web" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  tags          = {
    Name = "Helloworld"
  }
}


variable "allowports" {

  type=list(number)
  default = [443,80,3306,9200,800,900]
}

resource "aws_security_group" "allow_tls" {

  name = "allow_tls"
  dynamic "ingress" {
    for_each = var.allowports
    iterator = port
    content {

      from_port = port.value
      protocol  = "tcp"
      to_port   = port.value

      cidr_blocks = ["0.0.0.0/0"]
    }
  }


}


*/