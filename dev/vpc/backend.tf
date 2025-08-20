terraform {
  backend "s3" {
    bucket         = "my-s3-for-tfstate"
    key            = "dev/vpc.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "state-locking"
    profile        = "dev"

  }
}