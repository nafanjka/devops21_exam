output "sg_id" {
  description = "The security group ID passed from this module"
  value       = aws_security_group.sg_80.id
}

