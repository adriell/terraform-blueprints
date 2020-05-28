# AMI
data "aws_ami" "amzn_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm*-x86_64-gp2"]
  }
}

# VPC

data "terraform_remote_state" "vpc"{
  backend = "s3"
  config = {
    bucket  = var.bucket
    key     = var.bucket_key
    region  = var.region
  }
}