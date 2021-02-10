module "dns"{
    source = "git::ssh://git@github.com/adriell/terraform-module-route53.git?ref=v1.0.0"

    name   = var.name
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
    tags   = var.tags
}