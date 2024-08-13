variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "sku_name" {
  description = "The name of the sku"
  type        = string
}

variable "os_type" {
  description = "The type of the os"
  type        = string
}

variable "webapp_name" {
  description = "The name of the Web App"
  type        = string
}

variable "dotnet_framework_version" {
  description = "The .NET Framework version for the Web App"
  type        = string
}

variable "app_settings" {
  description = "A map of key-value pairs for app settings"
  type        = map(string)
  default     = {}
}

# Tags
variable "tags" {
  type        = object({
    BPCID               = string
    Backup              = string
    Brand               = string
    Environment         = string
    Project             = string
    Owner               = string
    FinanceContact      = string
    Criticality         = string
    WorkingHours        = string
    ServiceLine         = string
    PII                 = string
    DataClassification  = string
    ServerRole          = string
  })
  description = "Tags to add in created resources."
}