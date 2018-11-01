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
| stream-view-type | Determines what to write to the stream, each time an item is updated. Valid values : KEYS_ONLY, NEW_IMAGE, OLD_IMAGE, NEW_AND_OLD_IMAGES. | string |
 `KEYS_ONLY` | no |
| tags | A map defining pairs of key:values used to tag the DynamoDb table. | map | `<map>` | no |
| ttl-attribute-name | The name of the attribute that is used to determine the TTL. | string | `` | no |
| ttl-enabled | Determines if the TTL property is applied to the table. | string | `false` | no |

## Output arguments

| Name | Description |
|------|-------------|
| dynamodb-arn | The ARN of the DynamoDB. |

## Reading material/resources

## Notes/Common Problems