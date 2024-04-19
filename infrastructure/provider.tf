terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    #TODO Add configs
    bucket = "da7-terraform-state"
    key = "ctw03640"
    region = "eu-central-1"
    profile = "data_academy"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-central-1"
  profile = "data_academy"
}
