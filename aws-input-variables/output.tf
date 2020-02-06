output "ami" {
  value = aws_instance.example.ami
}

output "region" {
  value = var.region
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
