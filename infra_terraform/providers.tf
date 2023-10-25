terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.77.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
}

terraform {
  backend "azurerm" {
    resource_group_name = ""
    storage_account_name = "" 
    container_name       = "" 
    key                  = ""  
  }
}