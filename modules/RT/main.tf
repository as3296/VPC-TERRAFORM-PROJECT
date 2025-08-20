resource "aws_route_table" "RT-public" {
  vpc_id =var.vpc-id

  route {
    cidr_block = var.RTcid-public
    gateway_id = var.igw-id
  }
}

resource "aws_route_table" "RT-private" {
  vpc_id =var.vpc-id

  route {
    cidr_block = var.RTcid-private
    gateway_id = var.NAT-id
  }
}

resource "aws_route_table_association" "rta-pub-assocn" {
    count = length(var.pub_subnets)
    subnet_id = element(var.pub-association, count.index)
    route_table_id = aws_route_table.RT-public.id
}

resource "aws_route_table_association" "rta-private-assocn" {
    count = length(var.private_subnets)
    subnet_id = element(var.private-association, count.index)
    route_table_id = aws_route_table.RT-private.id

  
}