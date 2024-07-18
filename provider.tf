terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 4.18.0"
   }
 }

 backend "s3" {
   bucket = "pm123bucket"
   key    = "state"
   region = "eu-north-1"
 }
}
provider "aws" {
	region = "eu-north-1"
}
