variable "location" {
  description = "Azure region for deployed resources"
  type        = string
  default     = "East US"
}

variable "vm_name" {
  description = "Name of the Azure virtual machine"
  type        = string
  default     = "abah-vm-lab"
}

variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
  default     = "azureuser"
}
