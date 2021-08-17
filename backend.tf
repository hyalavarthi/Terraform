terraform {
  backend "azurerm" {
    resource_group_name  = "RG-Terra-Resources"
    storage_account_name = "terraformstorageconnect"
    container_name       = "tfstate"
    key                  = "tf.terraform.tfstate"
  }
}