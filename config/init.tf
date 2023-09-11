provider "aws" {
  region = var.CLOUD_REGION
}

terraform {
  backend "s3" {
  }
}

