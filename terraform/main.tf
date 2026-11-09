
resource "aws_s3_bucket" "application_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Project     = "terraform-aws-s3-cicd"
  }
}

resource "aws_s3_bucket_versioning" "application_bucket_versioning" {
  bucket = aws_s3_bucket.application_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "application_bucket_encryption" {
  bucket = aws_s3_bucket.application_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "application_bucket_public_access" {
  bucket = aws_s3_bucket.application_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
