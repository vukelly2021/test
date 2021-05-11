# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket          = "tf-state"
    key             = "usor/ProjectId.tfstate"
    region          = "Region"
    dynamodb_table  = "cfgs-usor-tf-lock"
  }
}
