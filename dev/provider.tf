terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

provider "aws" {
  profile = "terradmin"
  region  = "us-east-1" # or any region you are using
}
