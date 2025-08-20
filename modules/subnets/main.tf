resource "aws_subnet" "public-anu" {
  vpc_id     = var.vpc_id
  count = length(var.azs)
  cidr_block = element(var.public_anu, count.index)
  availability_zone =  var.azs [count.index]
  map_public_ip_on_launch = var.public_auto_assign_ip

  tags = {
    Name = var.public_anu_name[count.index]
  }
} 


resource "aws_subnet" "private-anu" {
  vpc_id     = var.vpc_id
  count = length(var.azs)
  cidr_block = element(var.private_anu, count.index)
  availability_zone =  var.azs [count.index]
  map_public_ip_on_launch = var.private_auto_assign_ip

  tags = {
    Name = var.private_anu_name[count.index]
  }
} 