output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.subnet.id
}

output "public_sg_id" {
  description = "The ID of the security group"
  value       = aws_security_group.sg.id
}

