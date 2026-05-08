resource "aws_vpc" "staging_vpc" {
  cidr_block       = "10.0.0.0/16"
  region           = var.region

  tags = {
    Name = var.tags
  }
}

resource "aws_s3_bucket" "staging_bucket" {
  bucket = "test-${local.bucket_name}-2026"

  tags = {
    Name        = "Updated staging bucket"
    Environment = var.tags
  }
}

resource "aws_instance" "staging_instance" {
  ami                    = "ami-07a00cf47dbbc844c"
  instance_type          = var.instance_type

  tags = {
    Name = var.tags
  }
}
