module "vm_sg" {
    source = "./sg"
    rg     = "${var.rg}"
    location = "${var.location}"
    subnet_id = "${var.subnetvm_id}"

    
}
module "vm_nic" {
    source = "./nic"
    rg     = "${var.rg}"
    location = "${var.location}"
    subnet_id = "${var.subnetvm_id}"
    sg_id1     = "${module.vm_sg.sg_id}"
}

module "testvm" {
    source ="./vm"
    rg     = "${var.rg}"
    location = "${var.location}"
    vmnic_id = "${module.vm_nic.vmnic_id}"

}