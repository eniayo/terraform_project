variable "database_config" {
    description = "database config"
    default = {
        identifier = "demo-db"
        allocated_storage      = 20
        storage_type           = "gp2"
        engine                 = "mysql"
        engine_version         = "8.0"
        instance_class         = "db.t3.micro"
        username               = ""
        password               = ""
        parameter_group_name   = "default.mysql0.0"
        db_subnet_group_name   = ""
        vpc_security_group_ids = []
        skip_final_snapshot    = true
    }
    type = object({
        identifier = string
        allocated_storage      = number
        storage_type           = string
        engine                 = string
        engine_version         = string
        instance_class         = string
        username               = string
        password               = string
        parameter_group_name   = string
        db_subnet_group_name   = string
        vpc_security_group_ids = list(string)
        skip_final_snapshot    = bool
    })
}