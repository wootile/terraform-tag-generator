module "tags" {
  source = "../../"

  resource_owner    = "chenming@wootile.com"
  project_name      = "wootile"
  environment_name  = "test"
  terraform_managed = "true"
}

output "result" {
  value = module.tags.result
}
