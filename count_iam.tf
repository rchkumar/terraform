/*
provider "aws" {
  region = "us-east-1"
  profile = "default"

}

resource "aws_iam_user" "iamuser" {
  name = var.iamusers[count.index]
  path = "/system/"
  count = 3
}

variable "iamusers" {

  type = list
  default = ["sachin","khusal","naveen"]

}

*/