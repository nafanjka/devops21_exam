output "instance_id" {
  description = "The instance ID"
  value       = aws_instance.devops21_exam.id
}

output "public_ip" {
  description = "The Public IP address used to access the instance"
  value       = aws_instance.devops21_exam.public_ip
}
