variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "aks_name" {
  description = "Azure Kubernetes Service cluster name"
  type        = string
}
