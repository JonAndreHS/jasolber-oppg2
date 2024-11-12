variable "mssqlServerName" {
  description = "The name of the SQL Server"
  type        = string
  default     = "mssql-server"
}

variable "mssqlDatabaseName" {
  description = "The name of the SQL Database"
  type        = string
  default     = "mssql-database"
}

variable "rgName" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource"
  type        = string
}

variable "dbServerVersion" {
  description = "The version of the database"
  type        = string
  default     = "12.0"

}