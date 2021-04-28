resource "aws_subnet" "public_subnet_a_04" {
    vpc_id                  = aws_vpc.vpc_04.id
    cidr_block              = "172.4.0.0/24"
    map_public_ip_on_launch = true
    availability_zone       = format("%sa", var.aws_region)

    tags = merge(var.tags, { 
        Name = format("%s-public-%sa", var.project_name, var.aws_region)
    })
}

# Associate subnet public_subnet_cluster_1a to public route table
resource "aws_route_table_association" "public_subnet_cluster_1a_association_04" {
    subnet_id      = aws_subnet.public_subnet_a_04.id
    route_table_id = aws_vpc.vpc_04.main_route_table_id
}

resource "aws_subnet" "public_subnet_b_04" {
    vpc_id                  = aws_vpc.vpc_04.id
    cidr_block              = "172.4.1.0/24"
    map_public_ip_on_launch = true
    availability_zone       = format("%sb", var.aws_region)

    tags = merge(var.tags, { 
        Name = format("%s-public-%sb", var.project_name, var.aws_region)
    })
}

# Associate subnet public_subnet_cluster_1b to public route table
resource "aws_route_table_association" "public_subnet_cluster_1b_association_04" {
    subnet_id      = aws_subnet.public_subnet_b_04.id
    route_table_id = aws_vpc.vpc_04.main_route_table_id
}