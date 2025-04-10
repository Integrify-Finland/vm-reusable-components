resource "azurerm_subnet" "subnet" {

  for_each = var.subnets

  name                 = each.key
  resource_group_name  = azurerm_resource_group.resource_group.name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = each.value.address_prefixes
}