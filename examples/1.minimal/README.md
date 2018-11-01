# Minimal DynamoDB example

Note that this creates a dynamodb table that:

* has the name *some-random-name*;
* has primary key *ddb-hash-key*;
* has secondary key *ddb-range-key*;
* has R&W capacity of 1 units;
* is not encrypted;
* does not set the TimeToLive parameter;
* has no LSI;
* has no GSI.


## Execution

Run the following commands

```bash
terraform init
terraform apply   --auto-approve=true
terraform destroy --auto-approve=true
```