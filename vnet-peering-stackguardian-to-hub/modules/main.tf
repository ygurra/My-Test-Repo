
data "azurerm_virtual_network" "template" {
  name                = var.vnet_name
  resource_group_name = var.rg_name
}
