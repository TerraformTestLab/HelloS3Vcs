output "stack_id" {
  description = "The ID of the created stack"
  value       = tfe_stack.main.id
}

# output "deployment_names" {
#   description = "The deployments of the created stack"
#   value       = tfe_stack.main.deployment_names
# }

output "stack_url" {
  description = "The URL of the created stack"
  value       = "you can access the stack at https://app.terraform.io/app/${var.tfe_organization}/projects/${data.tfe_project.main.id}/stacks/${tfe_stack.main.id}"
}