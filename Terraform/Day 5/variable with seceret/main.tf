# Create ec2 instances
resource "aws_instance" "example" {
  ami           = var.ec2_ami_id # Change to a valid AMI ID for your region
  instance_type = var.aws_instance_type["small"]
  count         = var.aws_instance_count
  user_data     = file("apache-install.sh")
  tags = {
    Name = "ExampleInstance"
    Team = "production"
  }
  metadata_options {
    http_tokens = "required"
  }
}