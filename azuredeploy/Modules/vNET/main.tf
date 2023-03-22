resource "azurerm_virtual_network" "vnet" {
  #count               = var.vnet_Count
  name                = var.vnet_Name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
 
}