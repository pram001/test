terraform {
  required_providers {
    aws = {
      version = "~> 4.24.0"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
