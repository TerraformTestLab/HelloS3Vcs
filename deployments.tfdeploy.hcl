identity_token "aws" {
  audience = ["aws.workload.identity"]
}
deployment "development" {
  inputs = {
    enable_versioning = true
    enable_encryption = true
    tags = {
      CanDelete    = "true"
      Organization = "SujaysTerraformLab"
      Project      = "HelloS3Vcs"
      ManagedBy    = "Terraform"
    }
    bucket_name    = "stacks-cli-poc"
    region         = "ap-south-1"
    identity_token = identity_token.aws.jwt
    role_arn       = "arn:aws:iam::668081019392:role/stacks-SujaysTerraformLab-HelloS3Vcs"
  }
}
