# intuitive.cloud
##For Docker,
Navigate to docker folder and run docker build -t my-image-name .  For, running the docker image

To list Docker images, you can use:

docker images

To create and start a container from the image, you can use:

docker run -it my-image-name

To list running containers, you can use:

docker ps

To upload the image to ECR, you need to first create a repository in your ECR, then tag your image with the repository's URI, and finally push the image. Replace <region>, <account-id>, and <repository-name> with your specific values.

# Authenticate Docker to your ECR registry
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com

# Tag your image
docker tag my-image-name:latest <account-id>.dkr.ecr.<region>.amazonaws.com/<repository-name>:latest

# Push your image to the ECR repository
docker push <account-id>.dkr.ecr.<region>.amazonaws.com/<repository-name>:latest
  
For reference, please refer the screenshots


##For Terraform,
Make sure you provide the pem file name that exists in us-west-2 and bucket name should be unique
For running locally, make sure to have aws cli installed and configured and 
using terraform.tfvars to make changes to variables
Make sure that you destroy any infrastructure which was created using terraform destroy command


## For Github Actions,
Do not forget to add in environment variables under secrets and variables
AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY 
for this actions file to work
