variable "vpc_cidr" {
  description = "VPC CIDR RANGE"
  type = string
}

variable "subnet_cidr" {
    description = "Subnet CIDRS"  
    type = list(string)
} 

variable "subnet_names" {
    description = "subnet names"
    type = list(string)
    default = [ "PublicSubnet1" , "PublicSubnet2" , ]
} 

