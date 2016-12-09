// release, staging, dev, git branch name, etc.
variable "name" {}

data "terraform_remote_state" "inventory" {
  backend = "s3"
  config {
    bucket = "infrastrucket"
    key = "inventory/terraform_${var.name}.tfstate"
  }
}
