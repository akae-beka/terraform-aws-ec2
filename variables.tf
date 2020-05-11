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

variable "create" {
  description = "Controls if the EC2 resources should be created."
  type        = bool
}

variable "count" {
  description = "Number of EC2 Instances."
  type        = number
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "key_name" {
  description = "The key name of the Key Pair."
  type        = string
}

variable "subnet_id" {
  description = "The VPC Subnet ID."
  type        = string
}