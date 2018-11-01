# GSI and attributes configuration - DynamoDB example

Note that this creates a dynamodb table that:

* has the name *some-random-name*;
* has primary key *ddb-hash-key*;
* has secondary key *ddb-range-key*;
* has R&W capacity of 1 units;
* is not encrypted;
* does not set the TimeToLive parameter;
* has no LSI tables;
* has two GSI tables:
    * one called *gsi-table-1* with primary key *attribute-1* and secondary key *attribute-2* and R&W capacity at 1 units;
    * the other called *gsi-table-2* with primary key *attribute-2* and secondary key *ddb-range-key* and R&W capacity at 1 units;


## Execution

Run the following commands

```bash
terraform init
terraform apply   --auto-approve=true
terraform destroy --auto-approve=true
```