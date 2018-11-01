provider "aws" {
  region = "eu-east-1"
}

module "dynamodb" {
  source = "../../"

  // Input arguments
  ddb-table-name = "some-random-name"
}
