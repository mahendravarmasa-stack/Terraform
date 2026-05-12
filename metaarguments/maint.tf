resource aws_s3_bucket staging_bucket {
  count  = var.config.count
  bucket = var.bucket_staging_name[count.index]
  tags   = { Environment = var.tags }
}

resource aws_s3_bucket dev_bucket {
  for_each = toset(var.bucket_dev_name)
  bucket = each.value
  tags   = { Environment = var.tags }

  depends_on = [aws_s3_bucket.staging_bucket]
}

