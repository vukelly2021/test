# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket          = "tf-state"
    key             = "usor/.tfstate"
    vpc             = "vpcId"
    dynamodb_table  = "cfgs-usor-tf-lock"
  }
}
