variable "rgName" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location for the resource group"
  type        = string
}

variable "saName" {
  description = "Storage account name"
  type        = string
}

variable "storageContainerName" {
  description = "Storage container name"
  type        = string
  default     = "storagecontainerdefaultname"
}

variable "storageBlobName" {
  description = "Storage blob name"
  type        = string
  default     = "storage-blob-defaultname"

}
