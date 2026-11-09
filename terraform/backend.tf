
terraform {
  backend "s3" {
    bucket       = "hec-terraform-state-2026-unique12345"
    key          = "hec/dev/terraform.tfstate"
    region       = "ca-central-1"
    encrypt      = true
    use_lockfile = true
  }
}
