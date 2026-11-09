
variable "aws_region" {
  description = "AWS region where infrastructure will be deployed"
  type        = string
  default     = "ca-central-1"
}

variable "bucket_name" {
  description = "Globally unique name for the application S3 bucket"
  type        = string
  default     = "terraform-lab-s3-bucket-zeeshan-1925pm"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
