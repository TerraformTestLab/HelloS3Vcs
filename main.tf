terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }

  cloud {
    organization = "sujay-test-01"
    workspaces {
      name = "HelloS3Vcs"
    }
  }

  required_version = "~>1.10"
}


provider "aws" {
  region = var.region
}


module "name_randomizer" {
  source = "./modules/randomizer"
  
}

module "s3_bucket" {
  source            = "./modules/s3"
  bucket_name       = lower("${var.bucket_name}-${module.name_randomizer.name_randomizer}")
  tags              = var.tags
  enable_versioning = var.enable_versioning
  enable_encryption = var.enable_encryption
  region            = var.region
}
