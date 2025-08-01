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

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"   # Ubuntu 22.04 LTS in ap-south-1
  instance_type = "t2.micro"
  key_name      = "my-key"  # Replace with your actual key pair name

  tags = {
    Name = "SimpleEC2"
  }
}