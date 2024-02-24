variable "budgetcode_name" {
  description = "Budget code name"
  type        = string
  default     = ""
}

variable "environment_name" {
  description = "Environment name (production/uat/lt/stage/dev)"
  type        = string
  default     = "sandbox"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = ""
}

variable "resource_owner" {
  description = "Resource Owner"
  type        = string
  default     = "shared"
}

variable "terraform_managed" {
  description = "Tag resources witch managed by Terraform"
  type        = string
  default     = "true"
}
