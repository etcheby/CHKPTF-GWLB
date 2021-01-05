terraform {
  backend "remote" {
    organization = "pradel"

    workspaces {
      name = "GWLB-TGW"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}