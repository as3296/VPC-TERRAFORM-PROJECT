resource "aws_vpc" "anu-vpc" {
  cidr_block = var.cidrblock
  instance_tenancy = var.instancetenancy
  enable_dns_support = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.ipv6_cidr

  tags = {
    Name = var.vpcname
  }
}