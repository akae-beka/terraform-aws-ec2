output "ec2_id" {
  description = "The ID of the instance EC2."
  value       = module.aws_ec2.this_ec2_id
}

output "ec2_private_ip" {
  description = "The private IP of the instance EC2."
  value       = module.aws_ec2.this_ec2_private_ip
}

output "ec2_public_ip" {
  description = "The public IP of the instance EC2."
  value       = module.aws_ec2.this_ec2_public_ip
}