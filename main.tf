module "resource_group" {
  source   = "./modules/resource-group"
  rg_name  = var.rg_name
  location = var.location
}

module "storage" {
  source               = "./modules/storage"
  storage_account_name = var.storage_account_name
  container_name       = var.container_name
  rg_name              = module.resource_group.rg_name
  location             = module.resource_group.location
}
