output "instance_count" {
  description = "The number of EC2 instances created."
  value       = var.config.count
  
}

output "tags" {
  description = "The tags applied to the staging S3 bucket."
  value = var.tags.Environment
  
}

output "instance_arn" {
  description = "The ARN of the staging EC2 instance."
    value = aws_instance.dev_instance[*].arn
  
}