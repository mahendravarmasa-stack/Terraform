resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev-vpc"
  }
}

resource "aws_s3_bucket" "varma" {
  bucket = "devenv-bucket-2026"

  tags = { 
    Name           = "My bucket"
    Environment = "Dev"
    VPC = aws_vpc.dev_vpc.id
  }
}
