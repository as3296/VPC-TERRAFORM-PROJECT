module "NGW" {
    source = "../../modules/NATGW"
  public_association = module.subnets.public_subnet
  natgateway_name = var.dev_NGW_name
  }

