data "terraform_remote_state" "inventory" {
  backend = "s3"
  config {
    bucket = "infrastrucket"
    key = "inventory/terraform.tfstate"
  }
}
