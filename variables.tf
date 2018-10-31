variable "ddb-table-name" {
  description = "The DynamoDB table name."
  type        = "string"
}

variable "ddb-read-capacity" {
  description = "The read capacity, in units, of the DynamoDB table."
  type        = "string"
}

variable "ddb-write-capacity" {
  description = "The write capacity, in units, of the DynamoDB table."
  type        = "string"
}

variable "ddb-hash-key-name" {
  description = "The primary/partition key name of the DynamoDB table."
  type        = "string"
}

variable "ddb-hash-key-type" {
  description = "The primary/partition key type of the DynamoDB table."
  type        = "string"
}

variable "ddb-range-key-name" {
  description = "The secondary/range key name of the DynamoDB table."
  type        = "string"
}

variable "ddb-range-key-type" {
  description = "The secondary/range key type of the DynamoDB table."
  type        = "string"
}

variable "ddb-encryption" {
  description = "Determines if server side encryption is applied to the DynamoDB table."
  type        = "string"
}

variable "ttl-attribute-name" {
  description = "The name of the attribute that is used to determine the TTL."
  type        = "string"
}

variable "ttl-enabled" {
  description = "Determines if the TTL property is applied to the table."
  type        = "string"
}

variable "lsi-name" {
  description = "The name of the LSI table."
  type        = "string"
}

variable "lsi-range-key" {
  description = "The range key of the LSI table."
  type        = "string"
}

variable "lsi-projection-type" {
  description = "The projection applied to the LSI table."
  type        = "string"
}

variable "lsi-non-key-attributes" {
  description = "The list of attributes to be projected to the LSI table."
  type        = "list"
}

variable "gsi-name" {
  description = "The name of the GSI table."
  type        = "string"
}

variable "gsi-hash-key" {
  description = "The primary key of the GSI table."
  type        = "string"
}

variable "gsi-range-key" {
  description = "The secondary key of the GSI table."
  type        = "string"
}

variable "gsi-read-capacity" {
  description = "The read capacity, in units, of the GSI table."
  type        = "string"
}

variable "gsi-write-capacity" {
  description = "The write capacity, in units, of the GSI table."
  type        = "string"
}

variable "gsi-projection-type" {
  description = "The projection applied to the GSI table."
  type        = "string"
}

variable "gsi-non-key-attributes" {
  description = "The list of attributes to be projected to the GSI table."
  type        = "list"
}

variable "tags" {
  description = "A map defining pairs of key:values used to tag the DynamoDb table."
  type        = "map"
}

variable "region" {
  description = "The AWS region."
  type        = "string"
}
