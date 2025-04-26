terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.26.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
}  

resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = var.location

  lifecycle {
    create_before_destroy = true
   # ignore_changes = [ tags ]
    # replace_triggered_by = [  azurerm_storage_account.example.id]
    precondition {
      condition = contains(var.allowed_locations, var.location)
      error_message = "please enter a valid location!"
    }
  }
     
}

resource "azurerm_storage_account" "example" {
  #count = length(var.storage_account-name)
  for_each = (var.storage_account_name)
  #name = var.storage_account_name(count.index)
  name                     = each.value
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}