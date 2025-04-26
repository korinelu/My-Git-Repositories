# variables.tf

variable "prefix" {
  description = "Prefix for all resources"
  type        = string
  default     = "tfvmex"
}
variable "storage_os_disk" {
  description = "the storage disk size of os"
  type        = number
  default     = 80
}

variable "is_delete" {
  description = "the default behaviour of os and data disk upon vm termination"
  type        = bool
  default     = true
}

variable "allowed_locations" {
  description = "list of allowed locations"
  default     = ["West Europe", "North Europe", "East US"]
}

variable "resource_tags" {
  description = "tags to apply to the resource"
  type        = map(string)
  default     = {
    "environment" = "staging"
    "managed_by"  = "terraform"
    "department"  = "devops"
  }
}

# Tuple type

variable "network_config" {
  type = tuple([ string,string,number ])
  description = "Network congfiguration (vnet address, subnet address, subnet mask)"
  default = [ "10.0.0.0/16", "10.0.2.0", 24 ]
}

# only unique values

variable "allowed_vm_sizes" {
  type            = set(string)
  description = "allowed vm sizes"
  default = [ "Standard_DS1_v2", "Standard_DS2_v2","Standard_DS3_v2" ]
  
}

#object type

variable "vm_config" {
  type = object({
    name       = string
    size       = string
    location   = string
    image      = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  })
  default = {
    name     = "vm-example"
    size     = "Standard_DS1_v2"
    location = "eastus"
    image = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

variable "storage_account_name" {
  type = set(string)
  default = ["kokkera123" , "korinelu124" ]

}

variable "location" {
  default = "West Europe"
  type = string
  
}