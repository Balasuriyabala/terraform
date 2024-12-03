# Create ec2 instances
resource "aws_instance" "example" {
  ami           = var.ec2_ami_id # Change to a valid AMI ID for your region
  instance_type = var.aws_instance_type[2]
  count         = var.aws_instance_count

  tags = {
    Name    = "ExampleInstance"
    Team    = "DevOps"
    git_org = "Balasuriyabala"
  }
}