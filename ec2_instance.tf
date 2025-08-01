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
  shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
  profile                  = "terraform_user"
}




