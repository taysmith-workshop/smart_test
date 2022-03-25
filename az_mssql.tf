provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "az_rg" {
  name     = "example-resources"
  location = "West US"
}

resource "azurerm_storage_account" "security_storage_account" {
  name                     = "securitystorageaccount"
  resource_group_name      = azurerm_resource_group.az_rg.name
  location                 = azurerm_resource_group.az_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
}

resource "azurerm_mssql_server" "mssql1" {
  name                         = "mssql1"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  minimum_tls_version = "1.2"
  public_network_access_enabled = false
}

resource "azurerm_mssql_server" "mssql2" {
  name                         = "mssql2"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server" "mssql3" {
  name                         = "mssql3"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server" "mssql4" {
  name                         = "mssql4"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server" "mssql5" {
  name                         = "mssql5"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server" "mssql6" {
  name                         = "mssql6"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server" "mssql7" {
  name                         = "mssql7"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy1" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql1.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy2" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql2.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy3" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql3.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy4" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql4.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy5" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql5.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy6" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql6.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}

resource "azurerm_mssql_server_security_alert_policy" "alertpolicy7" {
	# checkov:skip=CKV_AZURE_27: Other contact
  # checkov:skip=CKV_AZURE_25: Other contact
  resource_group_name        = azurerm_resource_group.az_rg.name
  server_name                = azurerm_mssql_server.mssql7.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.security_storage_account.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.security_storage_account.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  retention_days = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}
