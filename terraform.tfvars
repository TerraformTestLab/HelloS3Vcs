bucket_name       = "workspace-01"
region            = "ap-south-1"
enable_versioning = true
enable_encryption = true
tags = {
  CanDelete    = "true"
  Organization = "SujaysTerraformLab"
  Project      = "HelloS3Vcs"
  ManagedBy    = "Terraform"
}
