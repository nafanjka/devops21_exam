output "public_ip" {
  description = "The Public IP address used to access the instance"
  value       = aws_instance.devops21_exam.public_ip
}

