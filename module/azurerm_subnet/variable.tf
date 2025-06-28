variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "default-subnet"
  
}

variable "address_prefixes" {
    default = ["10.0.0.0/24"]
  
}  

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}
