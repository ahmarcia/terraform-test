terraform {
  backend "remote" {
    organization = "marcialima"

    workspaces {
      name = "example-workspace"
    }
  }
}
