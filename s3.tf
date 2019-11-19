provider "aws" {
	region = "eu-west-2"
}

resource "aws_s3_bucket" "b" {
  bucket = "testing-test-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My second bucket - ci test"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = "testing-test-tf-bucket-ci"
  acl    = "private"

  tags = {
    Name        = "My third bucket - ci test"
    Environment = "Dev"
  }
}