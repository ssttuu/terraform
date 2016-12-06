
module "user_stu" {
  source = "./user"

  username = "stu"
  iam_group = "${aws_iam_group.developers.id}"
  github_username = "stupschwartz"
  github_team = "${github_team.Test4d3d3d3.id}"
}

module "user_jonathan" {
  source = "./user"

  username = "jonathan"
  iam_group = "${aws_iam_group.developers.id}"
  github_username = "OstrichProjects"
  github_team = "${github_team.Test4d3d3d3.id}"
}
