terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
#Configure the provider 2
provider "aws" {
  region = "us-east-1"
  alias  = "hi"
}
#Resoure Block which is noting our aws services
# Create a VPC
resource "aws_vpc" "first" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Team    = ""
    git_org = "Balasuriyabala"
  }
}
# Create a VPC
resource "aws_vpc" "second" {
  cidr_block = "10.0.0.0/16"
  provider   = aws.hi
  tags = {
    Team    = ""
    git_org = "Balasuriyabala"
  }
}