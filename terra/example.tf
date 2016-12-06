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

resource "aws_instance" "example" {
  ami = "ami-0d729a60"
  instance_type = "t2.micro"
}
