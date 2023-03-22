# Subnet module

 resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.rsg_Name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_prefixes
}