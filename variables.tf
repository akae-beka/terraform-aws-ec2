# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
# AWS_DEFAULT_REGION

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "ec2_create" {
  description = "Controls if the EC2 resources should be created."
  type        = bool
}

variable "ec2_key_name" {
  description = "The key name of the Key Pair."
  type        = string
}

variable "ec2_subnet_id" {
  description = "The VPC Subnet ID."
  type        = string
}

variable "ec2_count" {
  description = "Number of EC2 Instances."
  type        = number
}

variable "ec2_instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "ec2_security_group_ids" {
  description = "A list of security group IDs to associate with."
  type        = list(string)
}