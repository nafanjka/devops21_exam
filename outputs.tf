output "instance_id" {
  description = "The instance ID"
  value       = module.ec2_instance.instance_id
}

output "public_ip" {
  description = "The public IP address assigned to an instance"
  value       = module.ec2_instance.public_ip
}

output "dns_name" {
  description = "The DNS name of LB"
  value       = module.alb.lb_dns_name
}
