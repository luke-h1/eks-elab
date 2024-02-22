terraform {
  #   required_version = ">= 4.48.0"
  backend "s3" {
    bucket = "eks-elab-tfstate"
    key    = "dev/eks-with-tf/eks.tfstate"
    region = "eu-west-2"

    dynamodb_table = "vpc-solution"
  }
}

provider "aws" {
  region = var.aws_region
}