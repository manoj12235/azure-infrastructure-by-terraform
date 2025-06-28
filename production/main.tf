module "azurerm_resource_group" {
  source  = "../module/azurerm_resource_group"
  rg_name = "todo_rg"
  location = "West Europe"
}

module "azurerm_virtual_network" {
  depends_on = [ module.azurerm_resource_group ]
  source  = "../module/azurerm_virtual_network"
  vnet_name = "todo_vnet"
  location = "West Europe"
  address_space = ["10.0.0.0/16"]
  rg_name = "todo_rg"
}

module"azurerm_subnet"{
  depends_on = [ module.azurerm_virtual_network ]
  source = "../module/azurerm_subnet"
  subnet_name = "frontend_subnet"
  vnet_name = "todo_vnet"
  rg_name =  "todo_rg"
  address_prefixes = ["10.0.0.0/24"]


}

module"azurerm_public_ip"{
  depends_on = [module. azurerm_resource_group ]
  source = "../module/azurerm_public_ip"
  pip_name = "todo_public_ip"
  location = "West Europe"
  rg_name = "todo_rg"
}

module"azurerm_virtual_machine"{
  depends_on = [ module.azurerm_subnet, module.azurerm_public_ip, module.azurerm_resource_group]
  source = "../module/azurerm_virtual_machine"
  nic_name = "todo_nic"
  location = "West Europe"
  rg_name = "todo_rg"
  subnet_id = "/subscriptions/e08e3abd-807e-4b84-8dff-5647daf004e3/resourceGroups/todo_rg/providers/Microsoft.Network/virtualNetworks/todo_vnet/subnets/frontend_subnet"
  public_ip_id = "/subscriptions/e08e3abd-807e-4b84-8dff-5647daf004e3/resourceGroups/todo_rg/providers/Microsoft.Network/publicIPAddresses/todo_public_ip"
  vm_name = "todo_vm"
  admin_username = "adminuser"
  admin_password = "P@ssw0rd1234!"
  vm_size = "Standard_F2"         


}
