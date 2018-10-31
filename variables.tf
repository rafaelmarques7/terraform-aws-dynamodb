variable "ddb-table-name" {
  description = "The DynamoDB table name."
  type        = "string"
  default     = "dynamodb-table"
}

variable "ddb-attributes" {
  description = "A list of maps with the DynamoDB table attributes."
  type        = "list"
  default     = []
}

variable "lsi-list" {
  description = "A list of LSI map descriptions."
  type        = "list"
  default     = []
}

variable "gsi-list" {
  description = "A list of GSI map descriptions."
  type        = "list"
  default     = []
}

variable "ddb-read-capacity" {
  description = "The read capacity, in units, of the DynamoDB table."
  type        = "string"
  default     = 1
}

variable "ddb-write-capacity" {
  description = "The write capacity, in units, of the DynamoDB table."
  type        = "string"
  default     = 1
}  


variable "ddb-hash-key-name" {
  description = "The primary/partition key name of the DynamoDB table."
  type        = "string"
  default     = "ddb-hash-key"
}

variable "ddb-hash-key-type" {
  description = "The primary/partition key type of the DynamoDB table."
  type        = "string"
  default     = "S"
}

variable "ddb-range-key-name" {
  description = "The secondary/range key name of the DynamoDB table."
  type        = "string"
  default     = "ddb-range-key"
}

variable "ddb-range-key-type" {
  description = "The secondary/range key type of the DynamoDB table."
  type        = "string"
  default     = "S"
}

variable "ddb-encryption" {
  description = "Determines if server side encryption is applied to the DynamoDB table."
  type        = "string"
  default     = false
}

variable "ttl-attribute-name" {
  description = "The name of the attribute that is used to determine the TTL."
  type        = "string"
  default     = ""
}

variable "ttl-enabled" {
  description = "Determines if the TTL property is applied to the table."
  type        = "string"
  default     = false
}

variable "tags" {
  description = "A map defining pairs of key:values used to tag the DynamoDb table."
  type        = "map"
  default     = {}
}

variable "region" {
  description = "The AWS region."
  type        = "string"
  default     = "us-east-1"
}
