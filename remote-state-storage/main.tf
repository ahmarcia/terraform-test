provider "aws" {
  profile    = "default"
  region     = var.region
}

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = var.instance_type
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}
