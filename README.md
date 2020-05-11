# terraform-aws-ec2

[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Terraform module to create Amazon EC2

## Usage

```
provider "aws" {
  region = "eu-central-1"
}

module "aws_ec2" {
  source = "git::github.com/akae-beka/terraform-aws-ec2"

  create        = true
  instances     = 1
  instance_type = "t2.micro"
  key_name      = "yourkeypair"
  subnet_id     = "subnet-07c93198280415dc0" 
}
```