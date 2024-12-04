provider "aws" {
  region = "ap-northeast-1"
  alias = "tokyo"
}

provider "aws" {
  region = "us-east-1"
  alias = "new-york"
}

provider "aws" {
  region = "eu-west-2"
  alias = "london"
}

provider "aws" {
  region = "sa-east-1"
  alias = "sao-paulo"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "australia"
}

provider "aws" {
  region = "ap-east-1"
  alias = "hong-kong"
}

provider "aws" {
  region = "us-west-1"
  alias = "california"
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "tokyo-testb"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.78.0"
    }
  }
}
