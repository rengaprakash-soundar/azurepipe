variable "location" {
  description = "Location of the network"
  default     = "centralus"
}
variable "rg" {
  description = "Location of the network"
  default     = "hubresourcegroup"
}
variable "subnet_id" {
  type =list(string)

}