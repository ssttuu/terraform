
module "user_stu" {
  source = "./user"

  username = "stu"
  iam_group = "${aws_iam_group.developers.id}"
  github_username = "stupschwartz"
}

module "user_jonathan" {
  source = "./user"

  username = "jonathan"
  iam_group = "${aws_iam_group.developers.id}"
  github_username = "OstrichProjects"
}
