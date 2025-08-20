resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpcid

  tags = {
    Name = var.internet_gateway_name
  }
}