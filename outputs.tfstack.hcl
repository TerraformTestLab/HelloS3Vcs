output "bucket_name" {
  description = "The name of the created S3 bucket"
  value       = component.s3_bucket.bucket_name
  type        = string
}

output "bucket_arn" {
  description = "The ARN of the created S3 bucket"
  value       = component.s3_bucket.bucket_arn
  type        = string
}

output "state_data_host_organization" {
  description = "The name of the state data bucket"
  value       = var.tags.Organization
  type        = string
}

output "state_update_at" {
  description = "The timestamp of the last state update"
  value       = timestamp()
  type        = string
}

