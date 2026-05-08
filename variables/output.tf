output "staging_vpc_id" {
  value = aws_vpc.staging_vpc.id
  
}

output "staging_bucket_name" {
  value = aws_s3_bucket.staging_bucket.bucket
  
}

output "staging_instance_id" {
  value = aws_instance.staging_instance.id
  
}