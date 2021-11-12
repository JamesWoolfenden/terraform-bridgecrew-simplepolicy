variable "conditions" {
  type        = string
  description = "Simple policy block"
}

variable "cis_aws_v12" {
  type    = list(any)
  default = []
}

variable "cis_aws_v13" {
  type    = list(any)
  default = []
}

variable "cis_azure_v11" {
  type    = list(any)
  default = []
}

variable "cis_azure_v12" {
  type    = list(any)
  default = []
}

variable "cis_azure_v13" {
  default = []
}

variable "cis_docker_v11" {
  default = []
}

variable "cis_eks_v11" {
  default = []
}

variable "cis_gcp_v11" {
  type    = list(any)
  default = []
}

variable "cis_gke_v11" {
  type    = list(any)
  default = []
}

variable "cis_kubernetes_v15" {
  type    = list(any)
  default = []
}

variable "cis_kubernetes_v16" {
  type    = list(any)
  default = []
}

variable "guidelines" {
  type        = string
  description = "A good description justifying the check and outlining how to resolve"
  validation {
    condition = (
    length(var.guidelines) > 50)
    error_message = "Title should attempt be meaningful (gt 20 chars)."
  }
}


variable "title" {
  type        = string
  description = "The title of the check"
  validation {
    condition = (
    length(var.title) > 20)
    error_message = "TTitle should attempt be meaningful (gt 20 chars)."
  }
}

variable "severity" {
  type = string
  validation {
    condition     = contains(["critical", "high", "low", "medium"], var.severity)
    error_message = "The severity must be one of critical, high, low or medium."
  }
}

variable "category" {
  type = string
  validation {
    condition     = contains(["logging", "elasticsearch", "general", "storage", "encryption", "networking", "monitoring", "kubernetes", "serverless", "backup_and_recovery", "iam", "secrets", "public"], var.category)
    error_message = "The category must be one of logging, elasticsearch, general, storage, encryption, networking, monitoring, kubernetes, serverless, backup_and_recovery, iam, secrets, or public."
  }
}

variable "cloud_provider" {
  type = string
  validation {
    condition     = contains(["aws", "gcp", "linode", "azure", "oci", "alicloud", "digitalocean"], var.cloud_provider)
    error_message = "The cloud provider must be one the currently supported; aws, gcp, linode, azure, oci, alicloud and digitalocean."
  }

}

variable "frameworks" {
  type        = list(string)
  description = "List of supported frameworks for this check"

  validation {
    condition = length([
      for o in var.frameworks : true
      if contains(["Terraform", "Cloudformation"], o)
    ]) == length(var.frameworks)
    error_message = "The framework must be one or more of: Terraform, Cloudformation."
  }
}
