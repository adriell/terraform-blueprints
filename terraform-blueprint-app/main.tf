#Security Group
module "sg" {
  source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-sg/"
  
  name          = "${var.name}-sg"
  description   = var.description
  vpc_id        = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules

}

#ALB
module "alb-app" {
    source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-alb/"
    
    enabled                   = var.enabled
    name                      = var.name
    vpc_id                    = data.terraform_remote_state.vpc.outputs.vpc_id
    security_groups           = [module.sg.security_group]
    health_check_path         = var.health_check_path
    create_http_listener_rule = var.create_http_listener_rule
    listener_arn              = data.aws_lb_listener.selected_http.arn
    host_header               = var.record_name
    tags                      = var.tags
}

#ASG
module "asg-app"{
    source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-asg/"

    name                = var.name
    ami                 = data.aws_ami.amzn_linux.id
    instance_type       = var.instance_type
    key_name            = var.key_name
    user_data           = data.template_file.user_data.rendered
    vpc_zone_identifier = data.terraform_remote_state.vpc.outputs.private_subnet_ids
    target_group_arns   = [module.alb-app.alb_target_group_arn]
    tags                = var.tags
}

#DNS RECORD
resource "aws_route53_record" "alias_route53_record" {
    zone_id = data.aws_route53_zone.selected.zone_id
    name    = var.record_name
    type    = "A"

    alias {
      name                   = var.alb_dns_name
      zone_id                = var.alb_zone_id
      evaluate_target_health = true
    }
}