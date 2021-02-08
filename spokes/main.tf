module "spoke_rg" {
    source = "./resourcegroup"
    rg     = "${var.rg}"
    location     = "${var.location}"
}
module "spoke_vnet" {
    source = "./vnet"
    rg ="${module.spoke_rg.rg}"
    location = "${module.spoke_rg.location}"
    spoke_name1 ="${var.spoke1_name}"  
    spoke_cidr  ="${var.spoke_cidr1}" 
}
module "spoke1-subnet" {
    source = "./subnet"
    rg = "${module.spoke_rg.rg}"
    location ="${module.spoke_rg.location}"
    spoke_name ="${var.spoke1_name}" 
    spoke1_subnet = "${var.spoke1_subnet1}"


}
module "routetable" {
    source = "./routetable"
    rg = "${module.spoke_rg.rg}"
    location ="${module.spoke_rg.location}"
    subnet_id1 ="${module.spoke1-subnet.spoke_subnetid}"

}
module "testvm4" {
    source = "./test-vm"
    rg = "${module.spoke_rg.rg}"
    location ="${module.spoke_rg.location}"
    subnetvm_id ="${module.spoke1-subnet.spoke_subnetid}"
}
