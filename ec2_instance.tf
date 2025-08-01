#terraform block : initialzed the terraform configurations.
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}


#Provider b
provider "aws" {
  # Configuration options
}



