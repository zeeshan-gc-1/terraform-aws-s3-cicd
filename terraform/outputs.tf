
output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.application_bucket.bucket
}

output "s3_bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.application_bucket.arn
}

output "s3_bucket_region" {
  description = "Region of the application S3 bucket"
  value       = var.aws_region
}
