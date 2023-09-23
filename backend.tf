# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "app-project-lj-tf-remotestate"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "us-east-1"
    profile        = "CloudReachLauren"
    dynamodb_table = "tf-state-lock-july23"
  }
}