module "vpc" {
  source = "../../modules/vpc"


cidrblock =  var.dev_vpccidr
vpcname = var.dev_vpcname
}
 