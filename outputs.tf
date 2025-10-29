output "web_instance_public_ip" {
  value = aws_instance.web.public_ip
}

output "app_instance_private_ip" {
  value = aws_instance.app.private_ip
}

output "db_endpoint" {
  value = aws_db_instance.db.address
}
