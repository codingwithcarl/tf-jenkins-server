provider "aws" {
  region = "us-east-2"
  profile = "cwc"
}

terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform"
    region         = "us-east-2"
    key            = "codingwithcarl/cicd.tfstate"
    dynamodb_table = "terraform"
    profile        =  "cwc"
  }

}
