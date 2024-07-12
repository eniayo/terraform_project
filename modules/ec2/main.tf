resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  user_data = var.user_data
  key_name = var.key_pair_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_id 
  tags = {
    Name = var.instance_name
  }
}