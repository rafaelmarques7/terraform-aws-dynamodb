provider "aws" {
    region = "eu-east-1"
}

module "dynamodb" {
    source = "../../"

    // No input arguments are passed
    // This creates a minimal table, using the default parameters.  
}
