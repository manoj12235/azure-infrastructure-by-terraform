variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}
                                        # ***********
variable "location" {
  description = "The Azure location where the virtual network will be created."
  type        = string
  default     = "West Europe"
}
                                         # ***********
variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default = [ "10.0.0.0/18" ]
}

variable"rg_name" {
  description = "The name of the resource group."
  type        = string
}