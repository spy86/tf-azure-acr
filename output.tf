output "id" {
  description = "The unique identifier (ID) of the Azure Container Registry instance."
  value       = azurerm_container_registry.main.id
  sensitive   = false
}

output "login_server" {
  description = "The login URL for the Azure Container Registry, which can be used for authentication."
  value       = azurerm_container_registry.main.login_server
  sensitive   = false
}

output "admin_username" {
  description = "The username for the Azure Container Registry admin account, if the admin account is enabled."
  value       = azurerm_container_registry.main.admin_username
  sensitive   = true
}

output "admin_password" {
  description = "The password for the Azure Container Registry admin account, if the admin account is enabled."
  value       = azurerm_container_registry.main.admin_password
  sensitive   = true
}
