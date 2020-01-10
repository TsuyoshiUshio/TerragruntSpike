provider "azurerm" {
  version = "=1.39.0"
}
terraform {
    backend "azurerm" {}
}
resource "azurerm_resource_group" "test" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "10 branch"
  }
}