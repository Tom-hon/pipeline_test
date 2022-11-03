provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "state-hold"
    storage_account_name = "statehold1123122"
    container_name       = "state-backend"
    key                  = "actions.terraform.tfstate"
  }
}

terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.0"
    }
  }
}

provider "null" {
  # Configuration options
}
