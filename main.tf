locals {

  project_name        = "proj_name"
  resource_owner      = "res_owner"
  environment_name    = "env_name"
  terraform_managed   = "terraform_managed"
  budgetcode_name     = "budgetcode_name"

  project_name_value        = var.project_name != "" ? { (local.project_name) = var.project_name } : {}
  resource_owner_value      = var.resource_owner != "" ? { (local.resource_owner) = var.resource_owner } : {}
  environment_name_value    = var.environment_name != "" ? { (local.environment_name) = var.environment_name } : {}
  terraform_managed_value   = var.terraform_managed != "" ? { (local.terraform_managed) = var.terraform_managed } : {}
  budgetcode_name_value     = var.budgetcode_name != "" ? { (local.budgetcode_name) = var.budgetcode_name } : {}

  result = merge(
    local.project_name_value,
    local.resource_owner_value,
    local.environment_name_value,
    local.terraform_managed_value,
    local.budgetcode_name_value,
  )

  result_asg       = [for k, v in local.result : { key = k, value = v, propagate_at_launch = true }]
  result_asg_false = [for k, v in local.result : { key = k, value = v, propagate_at_launch = false }]
}