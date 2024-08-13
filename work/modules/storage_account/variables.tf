variable "storage_account_name" {
  description = "Storage account name"
  type        = string
  default     = null
}

variable "location" {
  description = "Specifies the supported Azure location"
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to create resources on."
}


variable "account_tier" {
  description = "Defines the Tier to use for this storage account (Standard or Premium)."
  type        = string
  default     = null
}

variable "account_replication_type" {
  description = "Defines the replication type to use for this storage account."
  type        = string
  default     = null
}

variable "account_kind" {
  description = "Defines the Kind of account. Valid options are `BlobStorage`, `BlockBlobStorage`, `FileStorage`, `Storage` and `StorageV2`. Changing this forces a new resource to be created. Defaults to StorageV2."
  type        = string
  default     = "StorageV2"
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the Storage Account. Possible values are `TLS1_0`, `TLS1_1`, and `TLS1_2`. "
  type        = string
  default     = "TLS1_2"
}

variable "public_nested_items_allowed" {
  description = "Allow or disallow nested items within this Account to opt into being public."
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Whether the public network access is enabled?"
  type        = bool
  default     = true
}

variable "shared_access_key_enabled" {
  description = "Indicates whether the Storage Account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD)."
  type        = bool
  default     = true
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
