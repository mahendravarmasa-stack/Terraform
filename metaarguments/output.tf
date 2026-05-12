output "staging_bucket_ids" {
  description = "The IDs of the created S3 buckets."
  value       = [for bucket in aws_s3_bucket.staging_bucket : bucket.id]
}

output "dev_bucket_ids" {
  description = "The IDs of the created S3 buckets for dev environment."
  value       = [for bucket in aws_s3_bucket.dev_bucket : bucket.id]
}