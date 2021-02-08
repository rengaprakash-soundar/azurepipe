output "sg_id" {
    value ="${azurerm_network_security_group.spokensg.*.id}"
}