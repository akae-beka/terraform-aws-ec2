# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY AWS EC2
# ---------------------------------------------------------------------------------------------------------------------

module "aws_ec2" {
  source = "./modules/ec2"

  create_ec2             = var.ec2_create
  key_name               = var.ec2_key_name
  subnet_id              = var.ec2_subnet_id
  instances              = var.ec2_count
  instance_type          = var.ec2_instance_type
  vpc_security_group_ids = var.ec2_security_group_ids
}