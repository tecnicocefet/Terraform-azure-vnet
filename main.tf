terraform {
  required_version = ">=1.4.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.84.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "joaocarlosterraformstate"
    container_name       = "terraform-remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }

}

provider "azurerm" {
  features {}

}
