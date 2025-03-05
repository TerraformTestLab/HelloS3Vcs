# TFE/TFC host, organization and project variables
variable "tfe_hostname" {
  default     = "https://example.tfe-hostname.io"
  description = "The hostname of the Terraform Enterprise instance"
  type        = string
}

variable "tfe_organization" {
  default     = "tfe-organization"
  description = "The organization of the Terraform Enterprise instance under which the stack will be created"
  type        = string
}

variable "tfe_project_name" {
  default     = "tfe-project-name"
  description = "The TFE/TFC project name under which the stack will be created"
  type        = string
}

# TFE/TFC stack related variables
variable "tfe_stack_name" {
  default     = "tfe-stack-name"
  description = "The name of the stack to create"
  type        = string
}

variable "tfe_stack_description" {
  default     = "tfe-stack-description"
  description = "The description of the stack to create"
  type        = string
}

# TFE/TFC VCS related variables
variable "stacks_vcs_branch_name" {
  default     = "stacks-vcs-branch-name"
  description = "The VCS branch name of the repository from which the stack will be created"
  type        = string
}

variable "stacks_vcs_repo_identifier" {
  default     = "stacks-vcs-repo-identifier/repo-name"
  description = "The VCS repository identifier of the repository from which the stack will be created"
  type        = string
}

variable "stacks_vcs_service_provider" {
  default     = "vcs-service-provider"
  description = "The VCS service provider of the repository from which the stack will be created"
  type        = string
}