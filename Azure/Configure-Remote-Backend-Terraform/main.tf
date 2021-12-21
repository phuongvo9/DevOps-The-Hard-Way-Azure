# terraform {
#   backend "local" {
#     path = "terraform/state/terraform.tfstate"
#   }
# }


# terraform init -migrate-state
terraform {
  backend "azurerm" {
    resource_group_name = "RG_DevOps_20211220"
    storage_account_name = "tfbackend01storagesa"
    container_name = "tfstate-backend"
    key = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  }
}

provider "azurerm" {
  feature {}
}

