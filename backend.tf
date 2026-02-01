terraform {
  backend "azurerm" {
    resource_group_name  = "rg-storage-demo"
    storage_account_name = "ankitstoragedemo01"
    container_name       = "tfstate"
    key                  = "projectx.terraform.tfstate"
  }
}
