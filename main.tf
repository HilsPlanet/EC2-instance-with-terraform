terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

}

provider "aws" {
  region  = "eu-west-2"
  access_key = "AKIAXBIKMTAJUXAQKEEW"
  secret_key = "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"

}

resource "aws_instance" "testvm" {
  ami           = "ami-0e5f882be1900e43b"
  instance_type = "t2.micro"

  tags = {
    Name = "test VM"
  }
}