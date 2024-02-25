terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.38.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}

resource "aws_s3_bucket" "local_name_bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    "Owner" = local.tag_created
  }
}

data "aws_s3_bucket" "criado_bucket" {
  bucket = "bucket-ja-existente"
}

module "bucket" {
  source      = "./modules/bucket"
  bucket_name = "my-tf-test-bucket"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = local.tag_created
  }
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.34.0"
}

variable "idade" {
  type    = number
  default = 18
}

variable "name" {
  type    = string
  default = "joao"
}

locals {
  tag_created = "created by ${var.name}"
}

output "bucket_name" {
  value = aws_s3_bucket.local_name_bucket.bucket
}
