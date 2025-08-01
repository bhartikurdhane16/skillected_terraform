terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.6.0"
    }
  }
}

provider "aws" {
   region = "ap-south-1" 
  shared_config_files      = ["/home/ubuntu/.aws/config"]          #iamuser profile detalis 
  shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
  profile                  = "terraform-user"
}

resource "aws_instance" "xyz" {
    ami= ami-0f918f7e67a3323f0
    instance_type= "t2.micro"
    key_name= "server1_key"
  }

