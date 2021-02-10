module "alb"{
    source = "git::ssh://git@github.com/adriell/terraform-module-alb.git?ref=v1.0.0"

    name              = var.name
    subnet_ids        = data.terraform_remote_state.vpc.outputs.public_subnet_ids
    security_groups   = [module.sg.security_group]
    listener_port     = var.listener_port
    vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
    health_check_path = var.health_check_path
}