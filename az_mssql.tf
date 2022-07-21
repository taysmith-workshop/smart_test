provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "az_rg" {
  name     = "example-resources"
  location = "West US"
  tags = {
    yor_trace = "2c91a3d4-a0b9-4d43-9221-3fa81f905f3a"
  }
}

resource "azurerm_storage_account" "security_storage_account" {
  name                      = "securitystorageaccount"
  resource_group_name       = azurerm_resource_group.az_rg.name
  location                  = azurerm_resource_group.az_rg.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
  tags = {
    yor_trace = "567098e2-1152-4e36-9b07-28e44660ad02"
  }
}

resource "azurerm_mssql_server" "mssql1" {
  name                         = "mssql1"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "9129e94e-699a-4b59-8f2d-3101aa754df6"
  }
}

resource "azurerm_mssql_server" "mssql2" {
  name                         = "mssql2"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "27495473-3f63-4164-9d0c-e77d943f8ef3"
  }
}

resource "azurerm_mssql_server" "mssql3" {
  name                         = "mssql3"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "dde259ce-051a-424d-852e-ff72b4b6a711"
  }
}

resource "azurerm_mssql_server" "mssql4" {
  name                         = "mssql4"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "ba3d3017-158b-4a56-aeab-5d9d01c8f135"
  }
}

resource "azurerm_mssql_server" "mssql5" {
  name                         = "mssql5"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "dbca6890-5fc1-479c-863b-2ccd5f0a910d"
  }
}

resource "azurerm_mssql_server" "mssql6" {
  name                         = "mssql6"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "7fd03b6f-47e7-4e8a-b16c-429d769df44b"
  }
}

resource "azurerm_mssql_server" "mssql7" {
  name                         = "mssql7"
  resource_group_name          = azurerm_resource_group.az_rg.name
  location                     = azurerm_resource_group.az_rg.location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "AdminPassword123!"
  tags = {
    yor_trace = "3cb2a7b5-6b0b-4145-90a7-6fce479d9740"
  }
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
  retention_days  = 20
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
  retention_days  = 20
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
  retention_days  = 20
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
  retention_days  = 20
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
  retention_days  = 20
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
  retention_days  = 20
  email_addresses = ["securityengineer@bridgecrew.io"]
}
