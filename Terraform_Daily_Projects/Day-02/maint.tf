terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0" # = is optional unless you're pinning strictly
    }
  }
}

provider "azurerm" {
  features {}
}
