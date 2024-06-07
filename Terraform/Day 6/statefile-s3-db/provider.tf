terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


## Adding Backend as s3 for remote storage
backend "s3" {
  bucket = "terraform-buck-1"
  key    = "home/ubuntu/db/terraform.tfstate"
  region = "ap-south-1"
  dynamodb_table = "terraform"
  }
}