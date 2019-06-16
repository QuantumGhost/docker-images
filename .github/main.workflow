workflow "Docker images daily build" {
  on = "schedule(0 0 * * *)"
  resolves = ["build-distroless"]
}

workflow "build image when push" {
  on = "push"
  resolves = ["build-distroless"]
}

action "build-distroless" {
  uses = "./ci/build-distroless"
  secrets = ["DOCKER_HUB_TRIGGER_URL"]
}
