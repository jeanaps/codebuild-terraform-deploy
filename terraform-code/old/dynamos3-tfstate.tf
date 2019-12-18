terraform {
  backend "s3" {
    bucket         = "<bucket name>"
    key            = "terraform.tfstate"
    region         = var.region
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}