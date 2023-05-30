output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.vpc.public_subnet_id
}

output "public_sg_id" {
  description = "The ID of the security group"
  value       = module.vpc.public_sg_id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2.ec2_instance_id
}

output "ebs_volume_id" {
  description = "ID of the EBS volume"
  value       = module.ec2.ebs_volume_id
}

output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = module.s3.bucket_name
}

