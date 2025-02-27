provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "divya" {
  instance_type = "t2.micro"
  ami = "ami-04b4f1a9cf54c11d0"
  subnet_id = "subnet-0e20f6f0099481c3c"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "divya-s3-demo-xyz"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key  = "Lock_Id"

  attribute {
    name = "LockID"
    type = "S"
  }
}