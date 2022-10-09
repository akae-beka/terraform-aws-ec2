# ---------------------------------------------------------------------------------------------------------------------
# CREATE AWS EC2
# ---------------------------------------------------------------------------------------------------------------------

locals {
  tags = {
    Description = "Managed by Terraform"
    Environment = terraform.workspace
  }
}

resource "random_id" "main" {
  byte_length = 5
}

resource "aws_instance" "main" {
  count = var.create_ec2 ? var.instances : 0

  ami                    = data.aws_ami.ubuntu.id
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  dynamic "root_block_device" {
    iterator = root_block
    for_each = var.root_block_device
    content {
      volume_size           = root_block.value["size"]
      volume_type           = root_block.value["type"]
      delete_on_termination = root_block.value["delete"]
    }
  }

  dynamic "timeouts" {
    iterator = time
    for_each = var.timeouts
    content {
      create = time.value["create"]
      update = time.value["update"]
      delete = time.value["delete"]
    }
  }

  tags = merge(
    local.tags,
    {
      Name = "ec2-${terraform.workspace}-${random_id.main.id}"
    }
  )
}
