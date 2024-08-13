terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.55.0"
    }

  }
}

provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

locals {
  env_acronym = var.env == "Production" ? "P" : "D"

  tags = {
    BPCID              = var.BPCID
    Backup             = var.backup
    Brand              = var.brand
    Environment        = var.env
    Project            = var.project
    Owner              = var.owner_email
    FinanceContact     = var.finance_contact_email
    Criticality        = var.criticality
    WorkingHours       = var.WorkingHours
    ServiceLine        = var.service_line
    PII                = var.PII
    DataClassification = var.data_classification
    ServerRole         = var.server_role
  }
}


module "webapp" {
  source                   = "./modules/webapp"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  app_service_plan_name    = var.app_service_plan_name
  os_type                  = var.os_type
  sku_name                 = var.sku_name
  webapp_name              = var.webapp_name
  dotnet_framework_version = var.dotnet_framework_version
  app_settings             = var.app_settings

  tags = local.tags

}

module "storage_account" {
  source                   = "./modules/storage_account"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.tags


}

module "bot_service" {
  source               = "./modules/bot_service"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = azurerm_resource_group.rg.location
  bot_name             = var.bot_name
  sku                  = var.sku
  microsoft_app_id     = var.microsoft_app_id
  microsoft_app_secret = var.microsoft_app_secret
  endpoint             = var.endpoint

  tags = local.tags

}


