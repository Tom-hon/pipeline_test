# resource "azurerm_resource_group" "test_storage" {
#   name     = var.test_storage
#   location = var.location
# }

# resource "azurerm_storage_account" "example" {
#   name                     = var.test_storage
#   resource_group_name      = azurerm_resource_group.test_storage.name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = var.tags
#   }
# }

resource "null_resource" "random" {

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command     = "Get-Date"
    interpreter = ["pwsh", "-Command"]
  }
}
