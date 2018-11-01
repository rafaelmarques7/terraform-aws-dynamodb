# DynamoDb minimum configuration example

The configuration provided in this directory creates a DynamoDb table, that:

* has the name *some-random-name*;
* has primary key *ddb-hash-key*;
* has secondary key *ddb-range-key*;
* has R&W capacity of 1 units;
* is not encrypted;
* does not set the TimeToLive parameter;
* has no LSI;
* has no GSI.

## Usage

To run this example, execute the following commands:

```bash
terraform init
terraform plan
terraform apply   
terraform destroy 
```