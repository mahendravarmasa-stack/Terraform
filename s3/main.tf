resource "aws_s3_bucket" "new_bucket" {
  bucket = "mvbucket-terraform2003"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}