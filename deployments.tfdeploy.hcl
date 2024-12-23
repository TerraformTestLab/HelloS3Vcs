# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = ["us-east-1"]
    role_arn       = "arn:aws:iam::668081019392:role/stacks-SujaysTerraformLab-HelloS3Vcs"
    identity_token = identity_token.aws.jwt
    default_tags = {
      stacks-equivalent-example = "HelloS3Vcs"
      can-delete                = "true"
      managed-by                = "Terraform-Stacks"
    }
    bucket_name       = "HelloS3StacksDev01"
    enable_versioning = false
    enable_encryption = false
  }
}

deployment "production" {
  inputs = {
    regions        = ["us-east-1", "us-west-1"]
    role_arn       = "arn:aws:iam::668081019392:role/stacks-SujaysTerraformLab-HelloS3Vcs"
    identity_token = identity_token.aws.jwt
    bucket_name    = "HelloS3StacksProd01"
    default_tags = {
      stacks-equivalent-example = "HelloS3Vcs"
      can-delete                = "true"
      managed-by                = "Terraform-Stacks"
    }
    enable_versioning = true
    enable_encryption = true
  }
}
