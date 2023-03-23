resource "azurerm_app_service_plan" "example" {
  name                = var.app_plan_name
  location            = var.location
  resource_group_name = var.rsg_Name

  sku {
    tier = "Standard"
    size = "S1"
  }
}