module "policy" {
  source         = "../../"
  guidelines     = var.guidelines
  conditions     = var.conditions
  cloud_provider = var.cloud_provider
  title          = var.title
  severity       = var.severity
  category       = var.category
  frameworks     = var.frameworks
}
