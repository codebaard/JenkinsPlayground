provider "aws" {
  region = "${var.region}"
  profile = "prashant_appgambit"
}

//go through https://docs.aws.amazon.com/systems-manager/latest/userguide/automation-jenkins.html for config of this part