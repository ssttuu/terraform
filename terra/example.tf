variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}
variable "AWS_DEFAULT_REGION" {
  default = "us-east-1"
}

provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY_ID}"
  secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
  region = "${var.AWS_DEFAULT_REGION}"
}

module "consul" {
    source = "github.com/hashicorp/consul/terraform/aws"

    key_name = "AWS SSH KEY NAME"
    key_path = "PATH TO ABOVE PRIVATE KEY"
    region = "us-east-1"
    servers = "3"
}
