resource "aws_iam_user" "user" {
  name = "${var.username}"
}

resource "aws_iam_group_membership" "developers" {
  name = "tf-developers-group-membership"
  users = [
    "${var.username}"
  ]
  group = "${var.iam_group}"
}
