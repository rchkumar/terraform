/*

provider "aws" {
  region = "us-east-1"
  profile = "default"

}

resource "aws_security_group" "allow_tls1" {

  name = "allow_tls1"
  ingress {

    from_port = 443
    protocol  = "tcp"
    to_port   = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

}


*/

