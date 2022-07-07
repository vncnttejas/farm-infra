terraform {
  required_version = ">= 0.12"

  backend "s3" {}

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

