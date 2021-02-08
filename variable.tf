variable "spoke1_location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "spoke1_rg" {
  description = "Location of the network"
  default     = "spoke1resourcegroup"
}
variable "hub_location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "hub_rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "hub_cidr" {
  description = "Location of the network"
  
}

variable "spokes_cidr" {
  description = "Location of the network"
  type = map
  
}
variable "spokes_name" {
  description = "Location of the network"
  type = list
  
}
variable "subnet1" {

}
variable "dmz1" {
  
}
variable "private_nva" {
  
}
variable "spoke_subnet" {

}
