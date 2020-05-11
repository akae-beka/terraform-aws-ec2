# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = ">= 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY AWS EC2
# ---------------------------------------------------------------------------------------------------------------------

module "aws_ec2" {
  source = "./modules/ec2"

  create_ec2    = var.create
  instances     = var.count
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id
}