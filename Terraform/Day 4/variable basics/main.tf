# Create ec2 instances
#resource "aws_instance" "example" {
#  ami           = var.ec2_ami_id  # Change to a valid AMI ID for your region
#  instance_type = "t2.micro"
#  count         = var.aws_instance_count
#}
provider "aws" {
  region = var.aws_region_mumbai
}

resource "aws_instance" "example" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  count         = var.aws_instance_count


  metadata_options {
    http_tokens = "required"
  }
  tags = {
    Team = "production"
  }
}