component "s3_bucket" {
  source = "./modules/s3"

  inputs = {
    "bucket_name"       = var.bucket_name
    "enable_encryption" = var.enable_encryption
    "enable_versioning" = var.enable_versioning
    "region"            = var.region
    "tags"              = var.tags
  }

  providers = {
    aws    = provider.aws.this
    random = provider.random.this
  }
}
