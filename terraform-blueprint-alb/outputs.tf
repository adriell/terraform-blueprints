output "alb_id" {
  value       = module.alb.alb_id
  description = "ARN do load balancer."
}

output "alb_zone_id" {
  value       = module.alb.alb_zone_id
  description = "ARN do load balancer."
}

output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "Nome do DNS do load balancer."
}

output "alb_target_group_name" {
  value       = module.alb.alb_target_group_name
  description = "Nome do target group"
}