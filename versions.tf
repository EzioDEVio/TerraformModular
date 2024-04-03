
terraform {
  required_version = ">= 0.14, <= 1.6.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # or any other version that's suitable for your needs
    }
  }
}


provider "aws" {
  # Configuration options
}
