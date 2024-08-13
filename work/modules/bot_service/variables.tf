
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}

variable "bot_name" {
  description = "The name of the Bot Service"
  type        = string
}

variable "sku" {
  description = "The SKU of the Bot Service"
  type        = string
}

variable "microsoft_app_id" {
  description = "The Microsoft App ID for the Bot Service"
  type        = string
}

variable "microsoft_app_secret" {
  description = "The Microsoft App Secret for the Bot Service"
  type        = string
}

variable "endpoint" {
  description = "The endpoint for the Bot Service"
  type        = string
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







