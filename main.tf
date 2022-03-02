terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Adding the s3 bucket
resource "aws_s3_bucket" "onebucket" {
   bucket = "testing-s3-ok-terraform"
   acl = "private"
 versioning {
      enabled = false
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
 }

resource "aws_iam_user" "my_iam_user"{
   name = "my-iam-user-abc-ok"
}



