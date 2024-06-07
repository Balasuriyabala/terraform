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

#########################################
# This line of command used to override our instance type
#terraform plan --var="aws_instance_type=t2.small" 
##################################################

variable "aws_instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
  
}