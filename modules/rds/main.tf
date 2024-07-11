resource "aws_db_instance" "db-inst" {
  identifier             = var.database_config["identifier"]
  allocated_storage      = var.database_config["allocated_storage"]
  storage_type           = var.database_config["storage_type"]
  engine                 = var.database_config["engine"]
  engine_version         = var.database_config["engine_version"]
  instance_class         = var.database_config["instance_class"]
  username               = var.database_config["username"]
  password               = var.database_config["password"]
  parameter_group_name   = var.database_config["parameter_group_name"]
  db_subnet_group_name   = var.database_config["db_subnet_group_name"]
  vpc_security_group_ids = var.database_config["vpc_security_group_ids"]
  skip_final_snapshot    = var.database_config["skip_final_snapshot"]
}