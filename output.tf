 output "vnet_id1" {
    value ="${module.hub_rg.vnet_id}"
}
 output "rg" {
    value ="${module.hub_rg.rg}"
}
output "vnet_name" {
    value ="${module.hub_rg.vnet_name}"
}

output "spoke_vnetname1" {
    value = "${module.spoke1.*.spoke_vnetname}"
}
output "spoke_vnetid" {
    value = "${module.spoke1.*.spoke_vnetid}"
}
output "spoke_vnetcidr" {
    value = "${module.spoke1.*.spoke_vnetcidr}"
}
