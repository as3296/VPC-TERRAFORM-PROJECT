variable "vpc_id" {
  
}
 
 variable "public_anu" {
   type = list(any)
 }
 variable "azs" {
   
 }
 variable "public_auto_assign_ip" {
    description = "toassign ip automatically"
    type = bool
    default = true
   
 }
variable "private_anu" {
    type = list(any)
  
}

variable "private_auto_assign_ip" {
    type = bool
    default = false
  
}

variable "public_anu_name" {
  
}

variable "private_anu_name" {
  
}








  #vpc_id     = var.vpc_id
  #count = length(var.azs)
  #cidr_block = element(var.public-anu, count.index)
  #availability_zone =  var.azs [coun.index]
  #map_public_ip_on_launch = var.public-auto-assign-ip