provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6IO57UG4BIERGBG3"
  secret_key = "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"
  # user for above credentials is ramch
}

resource "aws_instance" "myec2instance" {
  # you need to look for arguments section of aws instance
  ami = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

}