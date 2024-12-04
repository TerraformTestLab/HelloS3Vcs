output "bucket_name" {
    description = "The name of the created S3 bucket"
    value       = module.s3_bucket.bucket_name
}

output "bucket_arn" {
    description = "The ARN of the created S3 bucket"
    value       = module.s3_bucket.bucket_arn
}

output "state_data_host_workspace" {
    description = "The hostname of the state data bucket"
    value       = terraform.workspace
}

output "state_data_host_organization" {
    description = "The name of the state data bucket"
    value       = var.tags.Organization
}