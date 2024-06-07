# Create ec2 instances
resource "aws_instance" "example" {
  ami           = var.ec2_ami_id  # Change to a valid AMI ID for your region
  instance_type = var.aws_instance_type["small"]
  count         = var.aws_instance_count
  tags = {
    Name = "ExampleInstance"
  }
}

# Create  of vpc
#resource "aws_vpc" "vpc-ap-south-1" {
#  cidr_block = "10.0.0.0/16"
#  tags = {
#    Name = "vpc-ap-south-1"
#  }
#}