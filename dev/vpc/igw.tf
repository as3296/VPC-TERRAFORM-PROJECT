module "IGW" {
    source = "../../modules/IGW"
  vpcid = module.vpc.vpcid
  internet_gateway_name = var.dev_demo_IGW
}