/*

provider "aws" {
  region = "us-east-1"
  profile = "default"

}

locals {
  tags_common = {
    owner = "Ram"
    region = "us-east-1"
  }
}

resource "aws_instance" "myec2instance" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  tags = local.tags_common
}
*/