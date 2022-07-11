resource "aws_vpc" "vpc_prd" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true //para poder gerenciar nossas instancias
  enable_dns_support = true
}



resource "aws_subnet" "subnet_publica" {
  vpc_id     = aws_vpc.vpc_prd.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
}

resource "aws_route_table_association" "publica" {
    subnet_id = aws_subnet.subnet_publica.id
    route_table_id = aws_route_table.igw_route_table.id
}
