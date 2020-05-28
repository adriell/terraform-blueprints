# VPC

data "terraform_remote_state" "vpc"{
  backend = "s3"
  config = {
    bucket  = var.bucket
    key     = var.bucket_key
    region  = var.region
  }
}