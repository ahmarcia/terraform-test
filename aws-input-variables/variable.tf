variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-2757f631"
    "us-west-2" = "ami-4b32be2b"
  }
}
