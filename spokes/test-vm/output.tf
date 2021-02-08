output "sg_id" {
    value="${module.vm_sg.sg_id}"
}
output "vmnic_id" {
    value="${module.vm_nic.*.vmnic_id}"

}