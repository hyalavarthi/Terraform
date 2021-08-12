resource "azurerm_storage_account" "sa" {
  name                     = "${lower(var.azurerm_storage_account)}"
  resource_group_name      = "${azurerm_resource_group.RG.name}"
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "ct" {
  count                = length(var.component)
  name                 = "terraformstate${var.component[count.index]}"
  storage_account_name = azurerm_storage_account.sa.name

}