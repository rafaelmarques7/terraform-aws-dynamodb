# Terraform-AWS-DynamoDb

This module provides the necessary Terraform IaC to deploy a complete configurable DynamoDb table.
This module does not (yet) provide auto-scaling for the table.

## Table of contents
- [Terraform-AWS-DynamoDb](#terraform-aws-dynamodb)
    - [Folder structure](#folder-structure)
    - [Input arguments](#input-arguments)
    - [Output arguments](#output-arguments)
    - [Reading material/resources](#reading-materialresources)
    - [Notes/Common Problems](#notescommon-problems)

## Folder structure
```
.
├── dynamodb.tf             | This is the main code
├── examples                | 4 examples on how to use this module
│   ├── 1.minimal
│   ├── 2.lsi
│   ├── 3.gsi
│   ├── 4.full
│   └── README.md
├── main.tf                 | provisioner and data processing
├── outputs.tf              | output arguments
├── README.md                  
└── variables.tf            | input arguments
```

## Input arguments

This table was generated using the command `terraform-docs markdown .`, given the [terraform-docs library](https://github.com/segmentio/terraform-docs).

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| backup-enabled | Determines if backups are provisioned automatically. | string | `false` | no |
| ddb-attributes | A list of maps with the DynamoDB table attributes. | list | `<list>` | no |
| ddb-encryption | Determines if server side encryption is applied to the DynamoDB table. | string | `false` | no |
| ddb-hash-key-name | The primary/partition key name of the DynamoDB table. | string | `ddb-hash-key` | no |
| ddb-hash-key-type | The primary/partition key type of the DynamoDB table. | string | `S` | no |
| ddb-range-key-name | The secondary/range key name of the DynamoDB table. | string | `ddb-range-key` | no |
| ddb-range-key-type | The secondary/range key type of the DynamoDB table. | string | `S` | no |
| ddb-read-capacity | The read capacity, in units, of the DynamoDB table. | string | `1` | no |
| ddb-table-name | The DynamoDB table name. | string | `dynamodb-table` | no |
| ddb-write-capacity | The write capacity, in units, of the DynamoDB table. | string | `1` | no |
| gsi-list | A list of GSI map descriptions. | list | `<list>` | no |
| lsi-list | A list of LSI map descriptions. | list | `<list>` | no |
| region | The AWS region. | string | `us-east-1` | no |
| stream-enabled | Determines if streams are to be enabled. | string | `false` | no |
| stream-view-type | Determines what to write to the stream, each time an item is updated. Valid values : KEYS_ONLY, NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES. | string | `KEYS_ONLY` | no |
| tags | A map defining pairs of key:values used to tag the DynamoDb table. | map | `<map>` | no |
| ttl-attribute-name | The name of the attribute that is used to determine the TTL. | string | `` | no |
| ttl-enabled | Determines if the TTL property is applied to the table. | string | `false` | no |

## Output arguments

| Name | Description |
|------|-------------|
| dynamodb-arn | The ARN of the DynamoDB. |

## Reading material/resources

* [resource dynamodb table](https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html)
* [Global Secondary Index](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.html) (good exaplanation with example).
* [Local Secondary Index](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LSI.html)
* [Time To Live](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html)
* [DynamoDB stream - what, why and how](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
* [point in time recovery](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/PointInTimeRecovery_Howitworks.html)
* [a similar library](https://github.com/cloudposse/terraform-aws-dynamodb)

## Notes/Common Problems

* A word about attributes - following the [docs](https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#global_secondary_index-1) - only define attributes on the table object that are going to be used as:

    * Table hash key or range key
    * LSI or GSI hash key or range key

* The defintion of *ddb-attributes* (extra attributes besides hash and range), is only valid if these attributes are used by GSI or LSI. 

    * Note that it is not necessary to define these attributes upon creating the table. 
    It is possible to define them upon writing to the table.

    * The DynamoDB table creation requires only the definition of the SCHEMA.
    This implies the definition of all the relevant query keys, such as the DDb partition and range keys;
    the LSI index key; and the GSI partition and range keys.

* Possible improvements:
    * how to perform input validation