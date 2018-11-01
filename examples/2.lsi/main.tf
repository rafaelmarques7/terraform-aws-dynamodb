provider "aws" {
  region = "eu-east-1"
}

module "dynamodb" {
  source = "../../"

  // Input arguments
  ddb-table-name = "lsi-example"

  // Declare attributes for table
  ddb-attributes = [
    {
      name = "attribute-1"
      type = "S"
    },
    {
      name = "attribute-2"
      type = "B"
    },
  ]

  // You must use them as GSI/LSI keys
  // Otherwise, terraform or AWS will complain
  // with "all attributes must be indexed"
  lsi-list = [
    {
      name               = "lsi-table-1"
      range_key          = "attribute-1"
      projection_type    = "KEYS_ONLY"
      non_key_attributes = []
    },
    {
      name               = "lsi-table-2"
      range_key          = "attribute-2"
      projection_type    = "INCLUDE"
      non_key_attributes = ["attribute-1"]
    },
  ]
}
