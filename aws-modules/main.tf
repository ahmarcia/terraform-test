terraform {
  required_version = "0.12.20"
}

provider "aws" {
  region     = var.region
}

module "consul" {
  source      = "hashicorp/consul/aws"
  version = "0.7.4"
  num_servers = "3"
}
