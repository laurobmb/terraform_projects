resource "aws_vpc" "vpc_04" {
    cidr_block = "172.4.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = merge(var.tags, { Name = format("%s-vpc", var.project_name) })
}

# Internet Gateway
resource "aws_internet_gateway" "gw_04" {
  vpc_id = aws_vpc.vpc_04.id
  tags = {
    Name = format("%s-igw", var.project_name)
  }
}

# Route to Internet Gateway
resource "aws_route" "internet_access_04" {
  route_table_id         = aws_vpc.vpc_04.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw_04.id
}


