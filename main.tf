terraform {
    reqiured_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~. 5.0"
        }
    }

    required_version =">=1.2.0"
}

provider "aws"{
    region = "us-west-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "archa-abhi19"

  tags = {
    Name        = "archa-abhi19"
    Environment = "Dev"
  }
}