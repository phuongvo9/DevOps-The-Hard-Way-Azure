#!/bin/sh
RESOURCE_GROUP_NAME="RG_DevOps_202111220"
STORAGE_ACCOUNT_NAME="tfbackend01storagesa"
LOCATION = "southeastasia"
# Create Resource Group
az group create -l $LOCATION -n $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $LOCATION --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME




# Official CLI https://docs.microsoft.com/en-us/cli/azure/storage/account?view=azure-cli-latest#az_storage_account_create