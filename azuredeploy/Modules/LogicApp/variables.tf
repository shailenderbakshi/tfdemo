variable "location" {
  description = "Location of Resource Group"
  type        = string
}

variable "logicapp_name" {
  description = "The number of logic app to be deployed"
  type        = string
  default     = ""
}

variable "rsg_Name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = ""
}