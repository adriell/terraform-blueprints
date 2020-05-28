output "id" {
  description = "Lista dos IDs das instâncias"
  value       = module.ec2.id
}

output "ami" {
  description = "Lista das AMIs das instâncias"
  value       = module.ec2.ami
}

output "key_name" {
  description = "Lista dos Key Pairs das instâncias"
  value       = module.ec2.key_name
}

output "vpc_security_group_ids" {
  description = "Lista dos IDs dos security groups vinculados às instâncias"
  value       = module.ec2.vpc_security_group_ids
}

output "private_dns" {
  description = "Lista dos endereços DNS privados das instâncias"
  value       = module.ec2.private_dns
}

output "private_ip" {
  description = "Lista dos IPs privados das instâncias"
  value       = module.ec2.private_ip
}

output "public_dns" {
  description = "Lista dos endereços DNS públicos das instâncias"
  value       = module.ec2.public_dns
}

output "public_ip" {
  description = "Lista dos IPs públicos das instâncias"
  value       = module.ec2.public_ip
}

output "security_group" {
  description = "Id do security group"
  value       = module.sg.security_group
}