
terraform {
  backend "s3" {
    bucket         = "backedncidd12334"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "statefile-lock-table"
  }
}
