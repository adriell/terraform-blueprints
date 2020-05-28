module "ec2" {
  source = "/home/adriell/Documents/devops_labs/cloudops/terraform/terraform-modules/terraform-module-ec2/"
  
  name                   = var.name
  ami                    = data.aws_ami.amzn_linux.id
  instance_type          = var.instance_type
  instance_count         = var.instance_count
  key_name               = var.key_name
  subnet_ids             = data.terraform_remote_state.vpc.outputs.private_subnet_ids
  vpc_security_group_ids = [module.sg.security_group]
  tags                   = var.tags

}