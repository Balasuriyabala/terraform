# VPC 
resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    "Name" = "my_vpc"
    Team   = "production"
  }
}
# Subnet 
resource "aws_subnet" "Subnets" {
  count             = length(var.subnet_cidr)
  vpc_id            = aws_vpc.my_vpc
  cidr_block        = var.subnet_cidr[count.index]
  availability_zone = data.aws_availability_zone.available.names[count.index]
  tags = {
    Name = var.subnet_names[count.index]
    Team = "production"
  }
}

# Internet Gateway 
resource "aws_internet_gateway" "Igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "my internet Gateway"
    Team = "production"
  }
}

# Route Table 
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.my_vpc

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    "Name" = "MyRouteTable"
    Team   = "production"
  }
}

# Route Table Association 
resource "aws_route_table_association" "rta" {
  count          = length(var.subnet_cidr)
  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.rt.id
}