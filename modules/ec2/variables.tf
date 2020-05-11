# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "create_ec2" {
  description = "Controls if the EC2 resources should be created."
  type        = bool
}

variable "instances" {
  description = "Number of EC2 Instances."
  type        = number
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance."
  type        = string
}

variable "key_name" {
  description = "The key name of the Key Pair to use for the instance."
  type        = string
}

variable "root_block_device" {
  description = "The type of volume. Can be `standard`, `gp2`, `io1`, `sc1`, or `st1`"
  type        = list(map(string))
  default = [
    {
      size   = 20
      type   = "gp2"
      delete = true
    }
  ]
}

variable "timeouts" {
  description = "The timeouts block allows you to specify timeouts for certain actions."
  type        = list(map(string))
  default = [
    {
      create = "10m"
      update = "10m"
      delete = "10m"
    }
  ]
}