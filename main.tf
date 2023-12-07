resource "azurerm_resource_group" "resourcegrp" {
  name     = "${terraform.workspace}-GRP"
  location = local.location
}

resource "azurerm_virtual_network" "network" {
  name                = "${terraform.workspace}-Vnet"
  location            = local.location
  resource_group_name = azurerm_resource_group.resourcegrp.name
  address_space       = ["10.0.0.0/16"]
  depends_on = [
    azurerm_resource_group.resourcegrp
  ]
}


resource "azurerm_subnet" "subnet" {
  name                 = "${terraform.workspace}SubnetA"
  resource_group_name  = azurerm_resource_group.resourcegrp.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes     = ["10.0.0.0/24"]
  depends_on = [
    azurerm_virtual_network.network
  ]
}

