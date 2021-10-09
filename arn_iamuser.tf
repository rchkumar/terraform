provider "aws" {
  region = "us-east-1"
  profile = "default"

}



resource "aws_iam_user" "iamuser" {
  name = "iamuser${count.index}"
  count = 5
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.iamuser[*].arn
}