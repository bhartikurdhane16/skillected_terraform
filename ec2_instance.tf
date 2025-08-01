#terraform block : initialzed the terraform configurations.
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}


#Provider block : t initialized the api conncetion with pcloud provider.check "name" {
#user profile, keys other settings.  



provider "aws" {
  region = "ap-south-1"               #region where want to create instance
  shared_config_files      = ["/root/.aws/config"]          #iamuser profile detalis 
  shared_credentials_files = ["/root/.aws/credentials"]
  profile                  = "terraform-user"
}

# Resource block: here we mention resources which wanted to create
#ex. ec2 instance,

resource "aws_instance" "my_server" {
  ami=   ami-0521bc4c70257a054 
  instance_instance_type =   
  
}


