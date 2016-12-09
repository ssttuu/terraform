resource "aws_iam_group" "admin" {
  name = "Admin"
}

resource "aws_iam_group_policy_attachment" "admin_policy" {
  group = "${aws_iam_group.admin.id}"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group" "developers" {
  name = "Dev"
}

resource "aws_iam_group_policy_attachment" "developer_policy" {
  group = "${aws_iam_group.developers.id}"
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
