workflow "Build distroless" {
  on = "schedule(0 0 * * *)"
  resolves = ["build_distroless"]
}

action "build_distroless" {
  uses = "actions/docker/cli@master"
  args = "cd distroless; make publish"
}
