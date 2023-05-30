

module "vpc" {
  source = "./modules/vpc"

  sg_name          = "my_sg_name"
  sg_description   = "my_sg_description"
  cidr_block       = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
}


module "ec2" {
  source              = "./modules/ec2"
  ami_id              = "ami-03f65b8614a860c29" # Replace this with your AMI ID
  instance_type       = "t2.micro"
  subnet_id           = module.vpc.public_subnet_id
  key_name            = "test" # Replace this with your key pair name
  security_group_ids  = [module.vpc.public_sg_id]
  availability_zone   = "us-west-2a"
  volume_size         = 8
  ebs_volume_size     = 1
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "my-bucket" # Replace this with your bucket name
}

