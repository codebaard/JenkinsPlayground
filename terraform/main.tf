terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

module "terraform_state_backend" {
    source = "cloudposse/tfstate-backend/aws"
    version     = "0.33.1"
    namespace  = "allianz_bi_cloud"
    stage      = "${var.stage}"
    name       = "terraform"
    attributes = ["state"]

    terraform_backend_config_file_path = "."
    terraform_backend_config_file_name = "backend_${var.stage}.tf"
    force_destroy                      = false
  }