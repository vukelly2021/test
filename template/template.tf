terraform {
  backend "s3" {
    bucket          = "tf-state"
    key             = "usor/ProjectId.tfstate"
    vpc             = "vpcId"
    dynamodb_table  = "cfgs-usor-tf-lock"
  }
}
