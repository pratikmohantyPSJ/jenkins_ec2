terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }


 backend "s3" {
   bucket = "pm123bucket"
   key    = "tf_state"
   region = "eu-north-1"
 }
}

provider "aws" {
	region = "eu-north-1"
}
