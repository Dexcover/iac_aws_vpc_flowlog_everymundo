terraform {
  required_version = ">= 0.14.4"

  required_providers {
    aws = {
        source = "aws"
        version = "3.37"
    }
  }

  backend "s3" {}
}