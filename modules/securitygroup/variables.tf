variable "sg_name" {
    description = "security group name"
    default = "demo-sg"
    type = string
}

variable "sg_ports" {
    description = "security group ingress ports"
    default = []
    type = list(string)
}

variable "vpc_id" {
    description = "vpc id is to create sg in"
    default = "vpc-062c8dc0d3ab38719"
    type = string
}