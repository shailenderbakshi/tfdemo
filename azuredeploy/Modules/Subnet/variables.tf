# subnet variables

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

variable "vnet_name" {
  description = "vNET"
  type        = string
  default     = ""
}

variable "rsg_Name" {
  type        = string
  description = "Prefix for the Resource Groups."
  default = "RSG"
}