provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "aws-overview-guide"
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  depends_on = [aws_s3_bucket.example]

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}

resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.example.id
}
