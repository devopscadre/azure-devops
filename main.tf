resource "azurerm_resource_group" "devopscadre_rg" {
  name     = "devops-rg"
  location = var.location
}

resource "azurerm_storage_account" "devopscadre_sa" {
  name                     = "sa1azuredevops"
  resource_group_name      = azurerm_resource_group.devopscadre_rg.name
  location                 = azurerm_resource_group.devopscadre_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  #acces_tier  = "Cool"

  tags = {
    environment = "devops"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.devopscadre_sa.id
  container_access_type = "private"
}


