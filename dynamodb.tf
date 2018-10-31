resource "aws_dynamodb_table" "ddb_table" {
  name                   = "${var.ddb-table-name}"
  read_capacity          = "${var.ddb-read-capacity}"
  write_capacity         = "${var.ddb-write-capacity}"
  hash_key               = "${var.ddb-hash-key-name}"
  range_key              = "${var.ddb-range-key-name}"
  attribute              = ["${local.attributes_final}"]
  local_secondary_index  = ["${var.lsi-list}"]
  global_secondary_index = ["${var.gsi-list}"]

  ttl {
    enabled        = "${var.ttl-enabled}"
    attribute_name = "${var.ttl-attribute-name}"
  }

  server_side_encryption {
    enabled = "${var.ddb-encryption}"
  }

  tags = "${var.tags}"
}
