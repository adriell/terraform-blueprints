module "dns"{
    source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-route53/"

    name   = var.name
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
    tags   = var.tags
}