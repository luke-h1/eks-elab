terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.65"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
  }

  backend "s3" {
    bucket = "eks-elab-tfstate"

    key = "dev/eks-with-tf/mediawiki.tfstate"

    region = "eu-west-2"

    dynamodb_table = "vpc-solution"
  }
}