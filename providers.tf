terraform {
  backend "s3" {
    bucket = "chioma-terraform-backend-bucket-001"
    region = "us-east-1"
    key    = "innovatemart/s3/terraform.tfstate"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.13"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
