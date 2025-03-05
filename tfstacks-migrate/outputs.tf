output "stack_id" {
  description = "The ID of the created stack"
  value       = tfe_stack.main.id
}

output "stack_url" {
  description = "The URL of the created stack"
  # TODO : Reconfigure this value to leverage a variable value containing the base URL of the Terraform Enterprise instance
  value       = "https://app.terraform.io/app/${var.tfe_organization}/projects/${data.tfe_project.main.id}/stacks/${tfe_stack.main.id}"
}