#!/bin/sh
RESOURCE_GROUP_NAME="RG_DevOps_202111220"
STORAGE_ACCOUNT_NAME="tfbackend01storagesa"
CONTAINER_NAME= "tfstate-backend"
LOCATION = "southeastasia"
# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location $LOCATION
# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query [0].value -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY
echo "storage_account_name: $STORAGE_ACCOUNT_NAME"
echo "container_name: $CONTAINER_NAME"
echo "access_key: $ACCOUNT_KEY"




# Official CLI https://docs.microsoft.com/en-us/cli/azure/storage/account?view=azure-cli-latest#az_storage_account_create


# # Create Resource Group
# az group create -l $LOCATION -n $RESOURCE_GROUP_NAME

# # Create Storage Account
# az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $LOCATION --sku Standard_LRS

# # Create blob Container
# az storage container create  --name tfstate-backend --account-name $STORAGE_ACCOUNT_NAME