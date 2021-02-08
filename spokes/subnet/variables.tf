variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "spoke1_subnet" {
    type = list(string)
    default =[
       "192.168.0.0/24",
       "20.0.0.0/16",
     ]
}
variable "spoke_name" {
  type = list
  
}
