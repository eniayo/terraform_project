output "db_endpoint" {
    value = aws_db_instance.db_inst.endpoint
}

output "db_username" {
    value = aws_db_instance.db_inst.username
}

output "db_password" {
    value = aws_db_instance.db_inst.password
    sensitive = true
}

