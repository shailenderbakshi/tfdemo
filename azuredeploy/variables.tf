
variable "environment" {
  description = "environment"
  type        = string
  default = "Dev"
}

variable "location" {
  description = "Location of Resource Group"
  type        = string
  default = "uksouth"
}

variable "rsg_Count" {
  description = "The number of Resource Groups to be deployed"
  type        = number
  default     = 1
}

variable "rsg_Name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = "RSG"
}

variable "adf_name" {
    description = "Azure data factory"
    default = "gs-adf002"
}

variable "app_plan_name" {
    description = "App service plan"
    default = "appservice001"
}

variable "vnet_cidr" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}

# If no values specified, this defaults to Azure DNS
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  type        = list(string)
  default     = []
}

variable "vnet_Name" {
  type        = string
  description = "Prefix for the vnet."
  default = "Module_Vnet_01"
}


variable "subnet_name" {
  description = "A list of public subnets inside the vNet."
  type        = string
  default     = "Subnet"
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
##########
#Databricks
##########

variable "workspace_name" {
  type        = string
  description = "Name of Databricks workspace"
  default     = "testwork-dbricks"
}

// variable "resource_group_name" {
//   type        = string
//   description = "Name of resource group into which Databricks will be deployed"
// }

// variable "location" {
//   type        = string
//   description = "Location in which Databricks will be deployed"
// }

variable "vnet_id" {
  type        = string
  description = "ID of existing virtual network into which Databricks will be deployed"
}

variable "private_subnet_name" {
  type        = string
  description = "Name of the private subnet"
}

variable "public_subnet_name" {
  type        = string
  description = "Name of the public subnet"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to attach to Databricks workspace"
  default     = {}
}

########################################################################
# APP GATEWAY
########################################################################
variable "appgw_name" {
  description = "Name of the vnet to create"
  type        = string
  default     = "APPGW"
}
variable "appgw_autoscale_configuration" {
  description = "Autoscale configuration parameters"
  type = object({
    min_capacity = number
    max_capacity = number
  })
  default = {
    min_capacity = 1
    max_capacity = 2
  }
}
variable "appgw_sku" {
  description = "Define WAF parameters"
  type = object({
    name = string
    tier = string
  })
  default = {
    name = "Standard"
    tier = "Standard"
  }
}
variable "appgw_public_ip" {
  description = "Define WAF parameters"
  type = object({
    allocation_method = string
    sku               = string
  })
  default = {
    allocation_method = "Dynamic"
    sku               = "Basic"
  }
}
variable "appgw_waf" {
  description = "Define WAF parameters"
  type = object({
    enable       = bool
    method       = string
    rule_type    = string
    rule_version = string
  })
  default = {
    enable       = false
    method       = "Standard"
    rule_type    = "OWASP"
    rule_version = "0.1"
  }
}
variable "appgw_subnet_fe_name" {
  description = "Name of the API Gateway subnet frontend"
  type        = string
  default     = "APPGW_Subnet_Frontend"
}
variable "appgw_subnet_be_name" {
  description = "Name of the API Gateway subnet backend"
  type        = string
  default     = "APPGW_Subnet_Backend"
}
variable "appgw_subnet_be" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.10.0/24"]
}
variable "appgw_subnet_fe" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.11.0/24"]
}
