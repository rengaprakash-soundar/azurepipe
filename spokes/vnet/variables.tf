variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "spoke_name1"{
  type = list
  default = ["root", "vnet1", "vnet22"]
  
  
} 
variable "spoke_cidr"{
  type = map
  default = {
    "root"  = "25"
    "vnet1"  = "50"
    "vnet2"  = "80"
  }
}