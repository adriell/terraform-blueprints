module "sg" {
  source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-sg/"
  
  name          = "${var.name}-sg"
  description   = var.description
  vpc_id        = data.terraform_remote_state.vpc.outputs.vpc_id
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules

}