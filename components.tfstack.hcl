# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

component "s3" {
  for_each = var.regions

  source = "./modules/s3"

  inputs = {
    region            = each.value
    bucket_name       = var.bucket_name
    tags              = var.default_tags
    enable_versioning = var.enable_versioning
    enable_encryption = var.enable_encryption
  }

  providers = {
    aws    = provider.aws.configurations[each.value]
    random = provider.random.this
  }
}
