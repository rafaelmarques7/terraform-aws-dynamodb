ddb-table-name          = "dynamodb-table"
ddb-read-capacity       = 1
ddb-write-capacity      = 1
ddb-hash-key-name       = "ddb-hash-key"
ddb-hash-key-type       = "S"
ddb-range-key-name      = "ddb-range-key"
ddb-range-key-type      = "S"
ddb-encryption          = false
ttl-attribute-name      = ""
ttl-enabled             = false
gsi-name                = "gsi-table"
gsi-hash-key            = "ddb-hash-key"
gsi-range-key           = "ddb-range-key"
gsi-read-capacity       = 1
gsi-write-capacity      = 1
gsi-projection-type     = "KEYS_ONLY"
gsi-non-key-attributes  = []
tags                    = {}
region                  = "us-east-1"
ddb-attributes          = []
# lsi-list                = [{
#      name               = "lsi-table"
#      range_key          = "ddb-range-key"
#      projection_type    = "KEYS_ONLY"
#      non_key_attributes = []
# }]
lsi-list              = []


