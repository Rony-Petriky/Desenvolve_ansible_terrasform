resource "aws_internet_gateway" "gatewey" {
    vpc_id = aws_vpc.vpc_prd.id
}

resource "aws_route_table" "igw_route_table" {
    vpc_id = aws_vpc.vpc_prd.id
}

resource "aws_route" "acessar_internet_publica" {
    route_table_id = aws_route_table.igw_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gatewey.id
}