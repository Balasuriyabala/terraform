terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS provider
provider "aws" {
  region = "aws_region_mumbai"  # Change the region as needed
}