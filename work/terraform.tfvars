# Tags
BPCID                 = "UK207"
backup                = "2200UTC"
brand                 = "Creative Service Line"
env                   = "Non-Production"
project               = "CSAsset"
owner_email           = "erik.goh@dentsu.com"
finance_contact_email = "priya.naik@dentsu.com"
criticality           = "Tier1-Business-Critical"
WorkingHours          = "0000-2400 MON-SUN"
service_line          = "Finance"
PII                   = "yes"
data_classification   = "Internal"
server_role           = "App"

resource_group_name = "AZ-VDC000006-EUW1-RG-CSASSET-DEV"

location = "West Europe"




app_service_plan_name    = "my-app-service-plan"
sku_name    = "B1"
os_type = "Linux"  
webapp_name              = "my-web-app"
app_settings = {
  "WEBSITE_RUN_FROM_PACKAGE" = "1"
}

storage_account_name     = "mystorageaccount"
account_tier             = "Standard"
account_replication_type = "LRS"

bot_name             = "my-bot"
sku                  = "F0"
microsoft_app_id     = "00000003-0000-0000-c000-000000000000"
microsoft_app_secret = "YOUR_MICROSOFT_APP_SECRET"
endpoint             = "endpoint"

