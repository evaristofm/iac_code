
provider "aws" {
    region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket = "cloud-devops001"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}