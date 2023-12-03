terraform {
  cloud {

    organization = "SoakDigital"
    workspaces {
      name = "sandbox-env"
    }
  }

  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.9.0"
    }
  }
  
}