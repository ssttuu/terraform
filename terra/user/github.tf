//resource "github_membership" "membership_for_user" {
//  username = "${var.github_username}"
//  role = "member"
//}

resource "github_team_membership" "test_team_membership" {
    team_id = "${var.github_team}"
    username = "${var.github_username}"
    role = "maintainer"
}
