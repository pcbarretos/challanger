# Saidas pra uso geral

output "cluster_name" {
  description = "Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "Endpoint for EKS"
  value       = module.eks.cluster_endpoint
}