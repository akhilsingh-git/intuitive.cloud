output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "ebs_volume_id" {
  description = "The ID of the EBS volume"
  value       = aws_ebs_volume.ebs_volume.id
}


