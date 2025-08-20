module "RT" {
    source = "../../modules/RT"
  vpc-id = module.vpc.vpcid
  RTcid-public = var.dev_public_RT_cidr
  RTcid-private = var.dev_private_RT_cidr
  igw-id = module.IGW.IGW-ID
  NAT-id = module.NGW.NATID
  pub-association = module.subnets.public_subnet
  private-association = module.subnets.private_subnet
  pub_subnets = var.dev_public_anu
  private_subnets = var.dev_private_anu
}

