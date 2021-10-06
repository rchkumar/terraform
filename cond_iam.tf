/*
provider "aws" {
  region = "us-east-1"
  profile = "default"

}
variable "istest" {

}
resource "aws_iam_user" "iamuser" {
  name = "gaurav"
  path = "/system/"
  count = var.istest == true ? 3 : 0
}

resource "aws_iam_user" "iamuser1" {
  name = "rajat"
  path = "/system/"
  count = var.istest == false ? 1 : 0
}
*/