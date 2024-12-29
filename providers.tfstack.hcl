required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.1"
  }

  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }

}

provider "random" "this" {
}

provider "aws" "this" {
  config {
    region = var.region

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.identity_token
    }

    default_tags {
      tags = var.tags
    }
  }
}

