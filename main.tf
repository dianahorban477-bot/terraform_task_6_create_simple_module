terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg_storage" {
  source  = "app.terraform.io/dianahorban477-bot/resource_group_storage/azurerm"
  version = "1.0.1"

  resource_group_name  = "rg-from-registry-module"
  storage_account_name = "stfromregistrymod123"
}