// Merge the attributes into a single map
//
locals {
  attributes = [
    {
      name = "${var.ddb-range-key-name}"
      type = "${var.ddb-range-key-type}"
    },
    {
      name = "${var.ddb-hash-key-name}"
      type = "${var.ddb-hash-key-type}"
    },
    "${var.ddb-attributes}",
  ]
  
  // Remove the range key, if it is not provided
  from_index = "${length(var.ddb-range-key-name) > 0 ? 0 : 1}"
  attributes_final = "${slice(local.attributes, local.from_index, length(local.attributes))}"
}

// Merge the list of LSI maps into a single map
//
# resource "null_resource" "lsi_names" {
#   count = "${length(var.lsi-list)}"
#   triggers = "${map("name", lookup(var.lsi-list[count.index], "name"))}"
# }

resource "aws_dynamodb_table" "ddb_table" {
  name                   = "${var.ddb-table-name}"
  read_capacity          = "${var.ddb-read-capacity}"
  write_capacity         = "${var.ddb-write-capacity}"
  hash_key               = "${var.ddb-hash-key-name}"
  range_key              = "${var.ddb-range-key-name}"
  attribute              = ["${local.attributes_final}"]

  ttl {
    enabled        = "${var.ttl-enabled}"
    attribute_name = "${var.ttl-attribute-name}"
  }

  # local_secondary_index {
  #   name               = "${var.lsi-name}"
  #   range_key          = "${var.lsi-range-key}"
  #   projection_type    = "${var.lsi-projection-type}"
  #   non_key_attributes = "${var.lsi-non-key-attributes}"
  # }
  local_secondary_index = ["${var.lsi-list}"]

  # global_secondary_index {
  #   name               = "${var.gsi-name}"
  #   hash_key           = "${var.gsi-hash-key}"
  #   range_key          = "${var.gsi-range-key}"
  #   write_capacity     = "${var.gsi-write-capacity}"
  #   read_capacity      = "${var.gsi-read-capacity}"
  #   projection_type    = "${var.gsi-projection-type}"
  #   non_key_attributes = "${var.gsi-non-key-attributes}"
  # }
  global_secondary_index = ["${var.gsi-list}"]
  
  server_side_encryption {
    enabled = "${var.ddb-encryption}"
  }

  tags = "${var.tags}"
}
