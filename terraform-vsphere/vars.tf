variable "vsphere_server" {}
variable "vsphere_user" {}
variable "vsphere_password" {}

variable "data_center" {
  default = "esxi.conectado.local"
}
variable "data_store" {
  default = "datastore1"
}
variable "mgmt_lan" {
  default = "VM Network"
}
variable "net_adapter_type" {
  default = "vmxnet3"
}
variable "guest_id" {
  default = "centos7_64Guest"
}
variable "custom_iso_path" {
  default = "/vmfs/volumes/datastore1/CentOS-7-x86_64-Minimal-1908.iso"
}
variable "name_new_vm" {
  description = "Input a name for Virtual Machine Ex. new_vm"
  default = "kube"
}
variable "vm_count" {
  description = "Number of instaces"
  default = "2"
}
variable "disk_size" {
  description = "Amount of Disk, Ex. 50, 60, 70 OBS: The amount may not be less than 50"
  default = "50"
}
variable "num_cpus" {
  description = "Amount of vCPU’s, Ex. 2"
  default = "2"
}
variable "num_mem" {
  description = "Amount of Memory, Ex. 1024, 2048, 3073, 4096"
  default = "2048"
}
