# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "s3" {
  for_each = var.regions

  source = "./modules/s3"

  inputs = {
    region      = each.value
    bucket_name = var.bucket_name
    tags = merge(var.default_tags, {
      Name      = var.bucket_name
      UpdatedAt = timestamp()
    })
    enable_versioning = var.enable_versioning
    enable_encryption = var.enable_encryption
  }

  providers = {
    aws = provider.aws.configurations[each.value]
  }
}
