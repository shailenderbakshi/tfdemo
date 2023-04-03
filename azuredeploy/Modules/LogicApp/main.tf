resource "azurerm_logic_app_workflow" "Logic-app-module" {
  name                = var.logicapp_name
  location            = var.location
  resource_group_name = var.resource_group_name
}