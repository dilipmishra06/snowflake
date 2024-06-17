terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.76"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "tfstateazuretfkavi"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
}

provider "snowflake" {

  user       = var.snowflake_provider_user
  account     = var.snowflake_provider_account
  role        = var.snowflake_provider_role
  private_key = var.snowflake_private_key
  authenticator = var.snowflake_authentication_mode
  private_key_passphrase = var.private_key_passphrase
}

resource "snowflake_user" "demo_snowflake_user" {
  name         = var.snowflake_user
  default_role = var.snowflake_user_default_role
  
}