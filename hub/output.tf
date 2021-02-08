output "rg"{
    value = "${module.hub_rg1.rg}"
}
output "location"{
    value = "${module.hub_rg1.location}"
}
output "vnet_name" {
    value ="${module.hub-vnet.vnet_name}"
}
output "vnet_id" {
    value ="${module.hub-vnet.vnet_id}"
}
output "dmz_id" {
    value ="${module.dmz.dmz_id}"
}
output "public_id" {
    value = "${module.publicip.public_id}"
}
output "nic_id" {
    value = "${module.nva-nic.nic_id}"
}
output "subnet_id" {
    value= "${module.subnets.subnet_id}"
}