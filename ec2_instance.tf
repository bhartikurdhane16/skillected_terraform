terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.6.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["/home/ubuntu/.aws/config"]          #iamuser profile detalis 
  shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
  profile                  = "terraform-user"
}

resource "aws_instance "xyz" {
    ami= ami-0d0ad8bb301edb745
    instance_type= "t2.micro"
  }