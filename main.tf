provider "aws" {}

variable "vpc-cidr-block" {
  description = " vpc cidr block"
}

variable "environment" {
  description = "vpc environment"
}

resource "aws_vpc" "development-vpc" {
  cidr_block = var.vpc-cidr-block
  tags = {
    Name = var.environment
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id            = aws_vpc.development-vpc.id
  cidr_block        = var.cidr-block-subnet1
  availability_zone = "ap-south-1a"

  tags = {
    Name = "develop-subnet-1"
  }
}

data "aws_vpc" "existing_vpc" {
  default = true
}

resource "aws_subnet" "dev-subnet-2" {
  vpc_id            = data.aws_vpc.existing_vpc.id
  cidr_block        = "172.31.48.0/20"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "development-subnet-2"
  }
}

output "aws-vpc-id" {
  value = aws_vpc.development-vpc.id
}

output "aws-subnet-availability-zone" {
  value = aws_subnet.dev-subnet-1.availability_zone
}

output "aws-subnet-cidr-blk" {
  value = aws_subnet.dev-subnet-2.cidr_block
}
