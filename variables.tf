variable "snowflake_private_key" {
  type = string
  description = "Private key of snowflake account (will be read from env)"

}
variable "private_key_passphrase" {
  type = string
  description = "private key passphrase  (will be read from env)"
  
}

variable "snowflake_provider_user" {
  type = string
  description = "User of snowflake account provider"
  
}

variable "snowflake_provider_account" {
  type = string
  description = "Identifier of snowflake account"
  
}

variable "snowflake_provider_role" {
  type = string
  description = "Role of snowflake account provider user"
  
}

variable "snowflake_authentication_mode" {
  type = string
  description = "Type of authentication used for snowflake provider user"
  
}

variable "snowflake_user" {
  type = string
  description = "User of snowflake account to create"
  
}

variable "snowflake_user_default_role" {
  type = string
  description = "Role of User of snowflake account to create"
}