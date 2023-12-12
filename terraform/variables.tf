# Envs pra ajudar
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ingress_chart" {
  description = "Ingress Chart Helm"
  type        = string
  default     = "https://kubernetes.github.io/ingress-nginx"
}

variable "ingress_version" {
  description = "Ingress Chart Helm"
  type        = string
  default     = "4.4.2"

}

variable "cluster_version" {
  description = "Version cluster"
  type        = string
  default     = "1.26"
}

variable "owner" {
  description = "Owner"
  type        = string
  default     = "Paulo Barreto"
}

variable "ca_wildcard_domain" {
  description = "Wildcard CA"
  type        = string
  default     = ""
}

variable "my_domain" {
  description = "Dominio Principal"
  type        = string
  default     = ""
}

variable "env_name" {
  type    = string
  default = "dev"
}