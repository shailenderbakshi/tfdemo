resource "azurerm_resource_group" "rsg" {
  #count    = var.rsg_Count
  name     = var.rsg_Name
  location = var.location
}