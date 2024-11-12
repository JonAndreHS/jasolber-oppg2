variable "servicePlanName" {
  description = "The name of the service plan"
  type        = string
  default     = "app-service-plan-default-name"
}

variable "rgName" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "osType" {
  description = "The OS type of the service plan"
  type        = string
  default     = "Linux"
}

variable "skuName" {
  description = "The SKU name of the service plan"
  type        = string
  default     = "P1v2"
}

variable "linuxWebAppName" {
  description = "The name of the Linux web app"
  type        = string
  default     = "linux-web-app"
}