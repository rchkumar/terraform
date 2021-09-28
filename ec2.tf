provider "aws"
{
  region = "us-east-1"
  access_key = "AKIA6IO57UG4BQHYZT6N"
  secret_key = "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"

}

resource "aws_instance" "myec2instance"
{
  # you need to look for arguments section of aws instance
  ami = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"

}