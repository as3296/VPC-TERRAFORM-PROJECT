terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.9.0"
    }
  }
}

resource "aws_eip" "NAT" {
  domain = "vpc"
}

resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.NAT.id
  subnet_id     = element(var.public_association, 0)

  tags = {
    Name = var.natgateway_name
  }
}
