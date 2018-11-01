provider "aws" {
  region = "eu-east-1"
}

module "dynamodb" {
  source = "../../"

  // Input arguments
  ddb-table-name = "some-random-name"
  ddb-read-capacity = 3
  ddb-write-capacity = 2
  ddb-hash-key-name = "id"
  ddb-hash-key-type = "N"
  ddb-range-key-name = "name"
  ddb-range-key-type = "S"
  ddb-encryption = true 
  tags = {
    Name = "full-example"
  }
  ddb-attributes = [
    {
      name = "attribute-1"
      type = "S"
    },
    {
      name = "attribute-2"
      type = "B"
    }
  ]
  lsi-list = [
    {
      name               = "lsi-table-1"
      range_key          = "name"
      projection_type    = "INCLUDE"
      non_key_attributes = ["attribute-1"] 
    },
    {
      name               = "lsi-table-2"
      range_key          = "attribute-1"
      projection_type    = "KEYS_ONLY"
      non_key_attributes = [] 
    }
  ]
  gsi-list = [
    {
      name               = "gsi-table-1"
      hash_key           = "attribute-1"
      range_key          = "attribute-2"
      read_capacity      = 1
      write_capacity     = 1
      projection_type    = "KEYS_ONLY"
      non_key_attributes = [] 
    },
    {
      name               = "gsi-table-2"
      hash_key           = "attribute-2"
      range_key          = "id"
      read_capacity      = 1
      write_capacity     = 1
      projection_type    = "ALL"
      non_key_attributes = [] 
    }
  ]
}
