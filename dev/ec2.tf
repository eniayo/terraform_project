module "ec2" {
  source        = "../modules/ec2"
  instance_ami  = "ami-008e7347e17029f0c"
  instance_name = "demo-vm"
  instance_type = "t2.micro"
  key_pair_name = "dove-key"
  user_data     = file("${path.module}/nginx.sh")
}