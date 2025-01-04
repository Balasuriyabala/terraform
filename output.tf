output "instance_public_ip" {
  value = aws_instance.insecure_instance.public_ip
}
