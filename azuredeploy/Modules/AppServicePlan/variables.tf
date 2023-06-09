variable "app_plan_name" {
    description = "Azure data factory"
    default = "gs-adf001"
}

variable "rsg_Name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = "RSG"
}

variable "location" {
  description = "Defines the Tier to use for this virtual network"
  type        = string
}
