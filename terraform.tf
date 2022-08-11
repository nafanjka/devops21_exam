terraform {

  cloud {
    organization = "Roga-i-Kopyta"

    workspaces {
      name = "devops21_exam"
    }
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }
  required_version = ">= 1.1.0"
}
