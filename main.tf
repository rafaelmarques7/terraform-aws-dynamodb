provider "aws" {
  region = "${var.region}"
}

// Pre-processing
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
  from_index       = "${length(var.ddb-range-key-name) > 0 ? 0 : 1}"
  attributes_final = "${slice(local.attributes, local.from_index, length(local.attributes))}"
}