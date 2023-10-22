variable "resource_group_name" {
  default     = "tech-challenge"
  description = "The name of the resource group in which to create the AKS cluster."
}

variable "location" {
  default     = "East US"
  description = "The location to deploy the AKS cluster."
}

variable "cluster_name" {
  default     = "tech-challenge-cluster"
  description = "The name of the AKS cluster."
}

variable "dns_prefix" {
  description = "The DNS prefix to use with the AKS cluster."
}

variable "kubernetes_version" {
  description = "The Kubernetes version to use for the AKS cluster."
  default     = "1.27.3"
}

variable "node_count" {
  type        = number
  description = "The initial quantity of nodes for the node pool."
  default     = 2
}

variable "node_max_count" {
  type        = number
  description = "The number maximum of nodes in the AKS agent pool."
  default     = 6
}

variable "node_min_count" {
  type        = number
  description = "The number minimum of nodes in the AKS agent pool."
  default     = 2
}

variable "vm_size" {
  description = "The size of the Virtual Machine."
  default     = "Standard_DS2_v2"
}

variable "subscription_id" {
  description = "The subscription id azure account"
}
