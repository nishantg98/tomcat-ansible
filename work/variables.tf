# Tags

variable "env_acronym" {
  type        = string
  default     = "D"
  description = "Acronym for the environment."
}
variable "BPCID" {
  type        = string
  default     = "UK207"
  description = "The first two letters must be in alphabets denoting the country or region followed by three-digit numeric code."
}
variable "backup" {
  type        = string
  default     = "2200UTC"
  description = "(Please check with Varun)"
}
variable "brand" {
  type        = string
  default     = "Creative Service Line"
  description = "Free Text (Please check with Varun)"
}
variable "env" {
  type        = string
  default     = "Non-Production"
  description = "either 'Production' or 'Non-Production'"
}
variable "project" {
  type        = string
  default     = "Assest"
  description = "Free Text"
}
variable "owner_email" {
  type        = string
  default     = "erik.goh@dentsu.com"
  description = "The email of the creator of the resource."
}
variable "finance_contact_email" {
  type        = string
  default     = "priya.naik@dentsu.com"
  description = "The email of the finance contact for the resource."
}
variable "criticality" {
  type        = string
  default     = "Tier1-Business-Critical"
  description = "Tier0- Core-Infrastructure-Service/Tier1-Business Critical/Tier2-Operational/Tier3-Non-critical  (Please check with Varun)"
}
variable "WorkingHours" {
  type        = string
  default     = "0000-2400 MON-SUN"
  description = "0000-2400 MON-SUN/1200-2200 MON-FRI (Please check with Varun)"
}
variable "service_line" {
  type        = string
  default     = "Finance"
  description = "Media/Finance/Creative/Functional  (Please check with Varun)"
}
variable "PII" {
  type        = string
  default     = "yes"
  description = "YES/NO (Please check with Varun)"
}
variable "data_classification" {
  type        = string
  default     = "Internal"
  description = "Internal / Confidential / Public  (Please check with Varun)"
}
variable "server_role" {
  type        = string
  default     = "App"
  description = "It will define the purpose of server/Application. In case of applications it is App"
}

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

variable "app_settings" {
  description = "A map of key-value pairs for app settings"
  type        = map(string)
  default     = {}
}

variable "storage_account_name" {
  description = "The name of the Storage Account"
  type        = string
}

variable "account_tier" {
  description = "The tier of the Storage Account"
  type        = string
}

variable "account_replication_type" {
  description = "The replication type of the Storage Account"
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
  description = "The Microsoft App ID"
  type        = string
}

variable "microsoft_app_secret" {
  description = "The Microsoft App Secret"
  type        = string
}


variable "endpoint" {
  description = "The endpoint for the Bot Service"
  type        = string
}
