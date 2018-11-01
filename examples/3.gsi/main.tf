provider "aws" {
  region = "eu-east-1"
}

module "dynamodb" {
  source = "../../"

  // Input arguments
  ddb-table-name = "gsi-example"

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

  gsi-list = [
    {
      name               = "gsi-table-1"
      hash_key           = "attribute-1"
      range_key          = "attribute-2"
      read_capacity      = 1
      write_capacity     = 2
      projection_type    = "KEYS_ONLY"
      non_key_attributes = []
    },
    {
      name               = "gsi-table-2"
      hash_key           = "attribute-2"
      range_key          = "ddb-range-key"
      read_capacity      = 2
      write_capacity     = 1
      projection_type    = "INCLUDE"
      non_key_attributes = ["attribute-1"]
    },
  ]
}
