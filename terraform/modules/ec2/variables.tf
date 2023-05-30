variable "ami_id" {
  description = "AMI ID"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
}

variable "key_name" {
  description = "Key pair name"
}

variable "security_group_ids" {
  description = "Security group IDs for the EC2 instance"
  type        = list(string)
}

variable "availability_zone" {
  description = "Availability zone for EBS volume"
}

variable "volume_size" {
  description = "Root volume size in GB"
}

variable "ebs_volume_size" {
  description = "EBS volume size in GB"
}

