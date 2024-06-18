module "storage_account" {
  source  = "https://registry.terraform.io/modules/data-platform-hq/storage-account/azurerm"
  version = "1.5.4"
  project                         = "datahq"
  env                             = "example"
  location                        = "eastus"
  resource_group                  = "example_rg"
}
output "storage_id" {
  description= "the id of storage account is:"
  value = "${module.storage_account.id}"
}
