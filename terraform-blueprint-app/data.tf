# VPC
data "terraform_remote_state" "vpc"{
  backend = "s3"
  config = {
    bucket  = var.bucket
    key     = var.bucket_key
    region  = var.region
  }
}

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

#DNS
data "aws_route53_zone" "selected" {
  name         = "${var.domain_name}."
  private_zone = true
}

#ALB
data "aws_lb" "selected"{
  name = var.alb_name
}

data "aws_lb_listener" "selected_http" {
  load_balancer_arn = data.aws_lb.selected.arn
  port              = 80
}


#USERDATA
data "template_file" "user_data" {
  template = "${file("user-data.sh.tpl")}"
}