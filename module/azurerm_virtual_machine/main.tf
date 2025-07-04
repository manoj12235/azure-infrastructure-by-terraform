resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Static"
    public_ip_address_id          = var.public_ip_id  
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.rg_name 
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password        # ✅ Add this
  disable_password_authentication = false         # ✅ Make sure this is false
 network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  
  


    
  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}