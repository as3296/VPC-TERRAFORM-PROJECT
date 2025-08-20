variable "cidrblock" {
    description = "defining CIDR of VPC"
  
}
variable "instancetenancy" {
    description = "defining tenancy of vpc"
    type = string
    default = "default"
    

  
}
variable "enable_dns_support" {
    description = "enable or disable dns support"#
    type = bool
    default = false
  
}
variable "enable_dns_hostnames" {
    description = "enable or disable dns hostnames"
    type = bool
    default = false
  
}
variable "ipv6_cidr" {
    description = "requiriment of ipv6"
    type = bool
    default = false
  
}
variable "vpcname" {
    description = "mention the name of vpc"
    type = string
  
}


 #cidr_block = "var.cidrblock"
 # instance_tenancy = "var.instancetenancy"
 # enable_dns_support = "var.enable_dns_support"
 # enable_dns_hostnames ="var.enable_dns_hostnames"
 # assign_generated_ipv6_cidr_block = "var.ipvr_cidr"