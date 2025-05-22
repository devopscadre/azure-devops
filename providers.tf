terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.59.0"
    }
  }
  required_version = ">= 0.14.9"

  #backend "azurerm" {
  #  resource_group_name  = azurerm_resource_group.devopscadre_rg.name
  #  storage_account_name = "azuredevops"
  #  container_name       = "tfstate"
  #  key                  = "terraform.tfstate"
  #}
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}