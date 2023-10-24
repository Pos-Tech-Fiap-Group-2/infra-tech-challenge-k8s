output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "azurerm_kubernetes_cluster" {
  value = azurerm_kubernetes_cluster.rg.name
}

output "kube_config" {
   value = azurerm_kubernetes_cluster.rg.kube_config_raw
   sensitive = true
}