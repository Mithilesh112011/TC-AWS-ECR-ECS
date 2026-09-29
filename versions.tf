terraform {
  required_version = ">= 1.13.3"

  cloud {
    organization = "REPLACE_WITH_TFC_ORGANIZATION"

    workspaces {
      name = "ecs-ecr-deployment"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Application = var.app_name
      ManagedBy   = "Terraform"
    }
  }
}