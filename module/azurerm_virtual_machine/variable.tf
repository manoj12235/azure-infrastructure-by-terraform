 variable "nic_name" {
  description = "The name of the network interface."
  type        = string
  default     = "example-nic"
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "example-vm"
}

variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  default     = "P@ssw0rd1234!"
}
variable "rg_name" {
  description = "The name of the resource group."
  type        = string
  default     = "example-rg"
}
variable "location" {
  description = "The Azure location where the virtual machine will be created."
  type        = string
  default     = "West Europe"
}
variable "subnet_id" {
  description = "The ID of the subnet where the virtual machine will be deployed."
  type        = string
}


variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_F2"
}

variable "public_ip_id" {
  description = "The ID of the public IP address."
  type        = string
  
}