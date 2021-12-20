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
    key = "jKKKLJNPYSMP3umElC6sTMPQSawdvxaMj/nTAQMkhHmGWGMNHGI8Uyyo3H30B/raFarF/FdPjoXdc7rnq3SuLg=="
  }
}

provider "azurerm" {
  feature {}
}

