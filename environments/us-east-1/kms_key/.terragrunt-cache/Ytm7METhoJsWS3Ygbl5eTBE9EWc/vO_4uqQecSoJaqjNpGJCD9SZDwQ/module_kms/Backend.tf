# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "terraform-grunt-state-bucket-first-pro"
    dynamodb_table = "cources-lack-table"
    encrypt        = false
    key            = "us-east-1/us-east-1/kms_key/terraform.tfvars"
    profile        = "default"
    region         = "us-east-1"
  }
}
