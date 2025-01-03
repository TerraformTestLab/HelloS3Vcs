variable "region" {
  type        = string
  description = "The AWS region in which to create the S3 bucket"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the bucket"
}

variable "enable_versioning" {
  type        = bool
  description = "Enable versioning for the bucket"
}

variable "enable_encryption" {
  type        = bool
  description = "Enable server-side encryption for the bucket"
}

variable "role_arn" {
  type        = string
  description = "The ARN of the IAM role to assume"
}

variable "identity_token" {
  type        = string
  ephemeral   = true
  description = "The identity token to use for assuming the role"
}

