variable "vpc_cidr" {
    description = "vpc cidr"
    default = "10.0.0/16"
    type = string   
}

variable "public_subnet_cidr" {
    description = "public subnet cidr"
    default = "10.0.1.0/17"
}

variable "public_subnet_name" {
    description = "public subnet name"
    default = "demo_pub_subnet"
    type = string
}

variable "public_ip_on_launch" {
    description = "create public on launch"
    default = "true"
    type = string
}

variable "private_subnet_cidr" {
    description = "private subnet cidr"
    default = "10.0.2.0/17"
}

variable "private_subnet_name" {
    description = "private subnet name"
    default = "demo_pri_subnet"
    type = string
}

variable "database_subnet_cidr" {
    description = "database subnet cidr"
    default = "10.0.3.0/17"
}

variable "database_subnet_name" {
    description = "database subnet name"
    default = "demo_db_subnet"
    type = string
}


variable "vpc_tenancy" {
    description = "vpc_tenancy"
    default = "default"
    type = string
}

variable "vpc_name" {
    description = "vpc_name"
    default = "demo_vpc"
    type = string
}

variable "igw_name" {
    description = "igw name"
    default = "demo_gw"
    type = string
}

variable "public_rt_name" {
    description = "public route table name"
    default = "demo-public-rt"
    type = string
}

variable "private_rt_name" {
    description = "private route table name"
    default = "demo-private-rt"
    type = string
}

variable "database_rt_name" {
    description = "database route table name"
    default = "demo-database-rt"
    type = string
}

variable "ngw_name" {
    description = "nat gateway name"
    default = "demo-ngw"
    type = string
}

variable "database_subnet_group" {
    description = "db subnet group name"
    default = "demo-db-sub-name"
    type = string
}