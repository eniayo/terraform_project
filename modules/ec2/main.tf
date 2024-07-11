resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  user_data = var.user_data
  key_name = var.key_pair_name
  tags = {
    Name = var.instance_name
  }
}