/*

provider "aws" {
  region  = "us-east-1"
  profile = "default"

}

resource "aws_security_group" "nginxsecurity" {

  name = "nginxsecurity"
  ingress {
    description = "TLS from VPC"
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    protocol  = "tcp"
    to_port   = 65535
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_instance" "web" {
  ami                    = "ami-02e136e904f3da870"
  instance_type          = "t2.micro"
  key_name = "terraform"
  vpc_security_group_ids = [aws_security_group.nginxsecurity.id]

    provisioner "remote-exec" {
      inline = [
         "sudo amazon-linux-extras install -y nginx1.12" ,
         "sudo systemctl start nginx.service"
      ]

      connection {
        type     = "ssh"
        user     = "ec2-user"
        private_key = file("./terraform.pem")
        host     = self.public_ip
      }

    }
  }

*/

