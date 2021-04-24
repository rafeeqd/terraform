
# Terraform HCL

provider "aws" {
  region = "us-east-1"
  #shared_credentials_file = "~/.aws/credentials"
  #profile = "default"
}


resource "aws_vpc" "prodvpcterraform" {
  cidr_block = "10.1.0.0/16"
  enable_dns_support=true
  enable_dns_hostnames = true
  tags = {

    Name = "VPC from Jenkins 1012"
}
}
