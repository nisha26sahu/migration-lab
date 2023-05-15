terraform {
  backend "s3" {
    bucket = "migration-lab-tfstates"
    key = "talent-academy/backend/terraform.tfstates"
    region = "eu-central-1"
    dynamodb_table = "terraform-lock"
  }
}