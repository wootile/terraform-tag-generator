# terraform-tag-generator

## Example

```hcl
module "tags" {
  source = "github.com/wootile/terraform-tag-generator"

  resource_owner    = "chenming@wootile.com"
  project_name      = "wootile"
  environment_name  = "test"
  terraform_managed = "true"
}

output "result" {
  value = module.tags.result
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_external"></a> [external](#requirement\_external) | >= 2.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budgetcode_name"></a> [budgetcode\_name](#input\_budgetcode\_name) | Budget code name | `string` | `""` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | Environment name (production/uat/lt/stage/dev) | `string` | `"sandbox"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name | `string` | `""` | no |
| <a name="input_resource_owner"></a> [resource\_owner](#input\_resource\_owner) | Resource Owner | `string` | `"shared"` | no |
| <a name="input_terraform_managed"></a> [terraform\_managed](#input\_terraform\_managed) | Tag resources witch managed by Terraform | `string` | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_result"></a> [result](#output\_result) | result with tags `object{}` |
| <a name="output_result_asg_list"></a> [result\_asg\_list](#output\_result\_asg\_list) | result with list of tags for ASG `tuple[object{}]` `propagate_at_launch=true` |
| <a name="output_result_asg_list_false"></a> [result\_asg\_list\_false](#output\_result\_asg\_list\_false) | result with list of tags for ASG `tuple[object{}]` `propagate_at_launch=false` |
<!-- END_TF_DOCS -->