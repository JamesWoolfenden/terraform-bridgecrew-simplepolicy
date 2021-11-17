resource "bridgecrew_simple_policy" "new" {
  cloud_provider = var.cloud_provider
  title          = var.title
  severity       = var.severity
  category       = var.category
  frameworks     = var.frameworks

  conditions {
    resource_types = var.conditions["resource_types"]
    cond_type      = var.conditions["cond_type"]
    attribute      = var.conditions["attribute"]
    operator       = var.conditions["operator"]
    value          = var.conditions["value"]
  }

  guidelines = var.guidelines

  benchmarks {
    cis_aws_v12        = var.cis_aws_v12
    cis_aws_v13        = var.cis_aws_v13
    cis_azure_v11      = var.cis_azure_v11
    cis_azure_v12      = var.cis_azure_v12
    cis_azure_v13      = var.cis_azure_v13
    cis_docker_v11     = var.cis_docker_v11
    cis_eks_v11        = var.cis_eks_v11
    cis_gcp_v11        = var.cis_gcp_v11
    cis_gke_v11        = var.cis_gke_v11
    cis_kubernetes_v15 = var.cis_kubernetes_v15
    cis_kubernetes_v16 = var.cis_kubernetes_v16
  }

}
