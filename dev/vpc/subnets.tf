module "subnets" {
    source = "../../modules/subnets"

    vpc_id = module.vpc.vpcid
    public_anu = var.dev_public_anu
    private_anu = var.dev_private_anu
    azs = var.dev_azs
    public_anu_name = var.dev_public_anu_name
    private_anu_name = var.dev_private_anu_name
  
}