output "this_ec2_id" {
  description = "The ID of the instance EC2."
  value       = element(aws_instance.main.*.id, 0)
}

output "this_ec2_private_ip" {
  description = "The private IP of the instance EC2."
  value       = element(aws_instance.main.*.private_ip, 0)
}

output "this_ec2_public_ip" {
  description = "The public IP of the instance EC2."
  value       = element(aws_instance.main.*.public_ip, 0)
}