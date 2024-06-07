#Input Variables
variable "aws_region_mumbai" {
  description = "Regions"
  type = string
  default = "ap-south-1"
}

variable "ec2_ami_id" {
    description = "AMI ID"
    type = string
    default = "ami-0cc9838aa7ab1dce7"

}

variable "aws_instance_count" {
    description = "EC2"
    type = number
    default = 1
}

variable "aws_instance_type" {
    description = "instance type"
    type = map(string)
    default = {
        "small" = "t2.micro"
        "medium" = "t2.medium"
        "large"  = "t2.large"
    }
}