terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["/home/nyilinhtut/.aws/config"]
  shared_credentials_files = ["/home/nyilinhtut/.aws/credentials"]
  profile                  = "main"
  alias                    = "main"
  region                   = "ap-southeast-1"
}

provider "aws" {
  shared_config_files      = ["/home/nyilinhtut/.aws/config"]
  shared_credentials_files = ["/home/nyilinhtut/.aws/credentials"]
  profile                  = "prod"
  alias                    = "prod"
  region                   = "eu-west-2"
}

provider "aws" {
  shared_config_files      = ["/home/nyilinhtut/.aws/config"]
  shared_credentials_files = ["/home/nyilinhtut/.aws/credentials"]
  profile                  = "dev"
  alias                    = "dev"
  region                   = "us-east-1"
}