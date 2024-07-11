variable "instance_ami" {
    description = "instance ami"
    type = string
}

variable "instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    description = "instance name"
    type = string
    default = "demo"
}

variable "user_data" {
    description = "user data"
    default = ""
    type = string
}

variable "key_pair_name" {
    description = "key pair name"
    type = string
  
}

