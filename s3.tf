provider "aws" {
	region = "eu-west-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "testing-test-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My second bucket"
    Environment = "Dev"
  }
}
