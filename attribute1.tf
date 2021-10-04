/*

provider "aws" {
  region = "us-east-1"
  profile = "default"

}

resource "aws_eip" "lb" {
  vpc = true
}

output "eip" {
  value = aws_eip.lb.public_ip
}
output "eid" {
  value = aws_eip.lb.id
}
resource "aws_s3_bucket" "mys3" {

  bucket = "ramcheekotibucket"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name
}

*/