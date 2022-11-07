terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAUOHJPRKBP6F7CB5R"
  secret_key = "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"
}

resource "aws_instance" "first_instance"{
    ami = "ami-0e6329e222e662a52"
    instance_type = "t2.micro"
    tags = {
        "Name" = "first instance"
    }
}