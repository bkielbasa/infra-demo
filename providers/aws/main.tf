terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Credentials and region come from the workspace cloud integration
# (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_SESSION_TOKEN, AWS_REGION).
provider "aws" {}

variable "name" {
  type    = string
  default = "infra-demo"
}

resource "aws_ssm_parameter" "demo" {
  name  = "/infra-demo/${var.name}"
  type  = "String"
  value = "hello from the aws provider demo"
}
