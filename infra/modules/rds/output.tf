output "db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "db_identifier" {
  value = aws_db_instance.postgres.id
}

output "rds_security_group_id" {
  value = aws_security_group.rds_sg.id
}
