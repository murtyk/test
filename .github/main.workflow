workflow "PR Checklist" {
  on = "pull_request"
  resolves = ["Create PR Comment"]
}

action "Create PR Comment" {
  uses = "murtyk/code-review-checklist@master"
  secrets = ["GITHUB_TOKEN"]
}
