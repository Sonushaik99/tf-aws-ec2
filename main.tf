terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"

    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      "Environment" = "dev"
      "Owner"       = "g33kzone"
    }
  }
}

resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami           = "ami-04d29b6f966df1537"

  tags = {
    "Name" = "aws-ec2-demo"
  }
}