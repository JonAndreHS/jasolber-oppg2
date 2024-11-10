variable "rg_backend_name" {
  type        = string
  description = "The name of the resource group in which the storage account will be created."
}

variable "rg_backend_location" {
  type        = string
  description = "The location/region where the resource group will be created."
}

variable "sa_backend_name" {
  type        = string
  description = "The name of the storage account to create."
}

variable "sc_backend_name" {
  type        = string
  description = "The name of the storage container to create."
}

variable "kv_backend_name" {
  type        = string
  description = "The name of the key vault to create."
}

variable "sa_backend_accesskey_name" {
  type        = string
  description = "The name of the secret to create in the key vault."
}