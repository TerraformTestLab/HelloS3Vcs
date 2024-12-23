# output "bucket_name" {
#   description = "The name of the created S3 bucket"
#   value       = component.s3.bucket_name
# }
#
# output "bucket_arn" {
#   description = "The ARN of the created S3 bucket"
#   value       = component.s3.arn
# }


output "bucket_names" {
  type        = list(string)
  description = "The names of the created S3 buckets"
  value       = [for bucket in component.s3 : bucket.bucket_name]
}