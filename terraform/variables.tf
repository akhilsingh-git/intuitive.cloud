variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key pair name for the EC2 instance"
}

variable "availability_zone" {
  description = "Availability zone for the EC2 instance"
  default     = "us-west-2a"
}

variable "volume_size" {
  description = "Root volume size in GB for the EC2 instance"
  default     = 8
}

variable "ebs_volume_size" {
  description = "EBS volume size in GB for the EC2 instance"
  default     = 1
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
}

variable "sg_name" {
  description = "Security Group Name"
  type        = string
}

variable "sg_description" {
  description = "Security Group Description"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the Subnet"
  type        = string
}

