terraform {
  backend "azurerm" {
    resource_group_name  = "<your-backend-resource-group-name>" # Replace with your resource group name
    storage_account_name = "<your-backend-storage-account-name>" # Replace with your storage account name
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true # Enables OIDC authentication for the backend
  }
}
