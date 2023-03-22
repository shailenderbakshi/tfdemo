variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network"
  type        = string
}

variable "location" {
  description = "Defines the Tier to use for this virtual network"
  type        = string
}

variable "vnet_Count" {
  description = "The number of instances to be deployed"
  type        = number
  default     = 1
}

variable "vnet_Name" {
  type        = string
  description = "Prefix for the vnet."
  default = ""
}

variable "address_space" {
  description = "The list of address spaces used by the virtual network"
  type        = list
}

variable "dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list
}