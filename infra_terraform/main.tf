resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}-rg"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "rg" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                = "agentpool"
    vm_size             = var.vm_size
    node_count          = var.node_count
    enable_auto_scaling = true
    max_count           = var.node_max_count
    min_count           = var.node_min_count
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control_enabled = true

  tags = {
    Environment = "Production"
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }
}
