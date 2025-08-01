#terraform block : initialzed the terraform configurations.
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}


#Provider block : t initialized the api conncetion, region, 
provider "aws" {
  # Configuration options
}



