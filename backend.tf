# backend

terraform {
  backend "s3" {
    region = "ap-northeast-2"
    bucket = "terraform-nalbam-seoul"
    key    = "opspresso.tfstate"
  }
  required_version = ">= 0.12"
}

# terraform {
#   backend "remote" {
#     organization = "nalbam"
#     workspaces {
#       name = "web-nalbam"
#     }
#   }
# }

provider "aws" {
  region = var.region
}

# aws s3 cp s3://terraform-nalbam-seoul/www.tfstate ./terraform.tfstate
