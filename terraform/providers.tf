# provider "azurerm" {
#   # resource_group_name  = "tfstate"
#   # storage_account_name = "tfstatehere"
#   # container_name       = "tfstate"
#   # key                  = "terraform.tfstate"
#   # access_key           = "c3+9DG/bYoU6ZC1DOpJDA3QQ6DFvdSYG3/XEvO2EWE8S3vzQGydQHkpU0IjHPKyu6xgQN7o/Q/mG+AStdfHm8g=="
#   features {}
# }

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
