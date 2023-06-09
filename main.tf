
provider "azurerm" {

  client_id       = "fe6eee2a-ec19-4dd6-995a-e34756131a69"
  client_secret   = "zcU8Q~Mw5qGiNDNo1vM3TPai1zyp7~faw8ra3aIU"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  subscription_id = "80ea84e8-afce-4851-928a-9e2219724c69"
  features {}
  skip_provider_registration = true
}

/*resource "azurerm_resource_group" "Sandbox_RG" {
  name     = "1-f20ed632-playground-sandbox"
  location = "East US"
}*/

resource "azurerm_virtual_network" "Sandbox_Vnet" {
  name                = "Sandbox_Vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "1-f20ed632-playground-sandbox"
}

resource "azurerm_subnet" "Sandbox_sub" {
  name                 = "Sandbox-subnet"
  resource_group_name  = "1-f20ed632-playground-sandbox"
  virtual_network_name = azurerm_virtual_network.Sandbox_Vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}

resource "azurerm_public_ip" "Sandbox_pub_IP" {
  name                = "Sandbox-public-ip"
  location            = "East US"
  resource_group_name = "1-f20ed632-playground-sandbox"
  allocation_method   = "Dynamic"
}

resource "azurerm_network_interface" "Sandbox-nic" {
  name                = "Sandbox-nic"
  location            = "East US"
  resource_group_name = "1-f20ed632-playground-sandbox"
  ip_configuration {
    name                          = "Sandbox-nic-configuration"
    subnet_id                     = azurerm_subnet.Sandbox_sub.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.Sandbox_pub_IP.id
  }
}

resource "azurerm_linux_virtual_machine" "Sandbox_VM" {
  name                = "SandboxVM"
  location            = "East US"
  resource_group_name = "1-f20ed632-playground-sandbox"
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.Sandbox-nic.id,
  ]
  admin_password                  = "Proximus#18"
  disable_password_authentication = false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}