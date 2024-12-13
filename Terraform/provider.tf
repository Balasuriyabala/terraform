terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0"
    }
  }

  backend "s3" {
    bucket = "terraform-template-fw"
    key    = "deve/terraform.tfvars"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
