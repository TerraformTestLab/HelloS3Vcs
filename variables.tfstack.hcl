# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "regions" {
  description = "The AWS region in which to create the S3 bucket"
  type = set(string)
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "identity_token" {
  description = "The identity token to use for assuming the role"
  type      = string
  ephemeral = true
}

variable "role_arn" {
  description = "The ARN of the role to assume"
  type = string
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
}

variable "enable_versioning" {
  type = bool
}


variable "enable_encryption" {
  type = bool
}
