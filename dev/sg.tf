module "sg" {
    source = "../modules/securitygroup"
    sg_ports = ["80","8080"]
    vpc_id = module.vpc.vpc_id
  
}