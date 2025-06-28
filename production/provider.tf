terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
   
  features {}
  subscription_id ="e08e3abd-807e-4b84-8dff-5647daf004e3"
}
