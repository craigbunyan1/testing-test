provider "aws" {
	region = "eu-west-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "testing-test-tf-bucket-ci"
  acl    = "private"

  tags = {
    Name        = "My third bucket"
    Environment = "Dev"
  }
}
