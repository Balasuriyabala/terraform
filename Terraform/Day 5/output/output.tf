output "publicip" {
  description = "publicip of instance"
  value = aws_instance.example.public_ip
  
}