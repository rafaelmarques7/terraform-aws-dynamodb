# DynamoDb Global Secondary Index example

The configuration provided in this directory creates a DynamoDb table that:

* has the name *gsi-example*;
* has primary key *ddb-hash-key*;
* has secondary key *ddb-range-key*;
* has R&W capacity of 1 units;
* is not encrypted;
* does not set the TimeToLive parameter;
* has no LSI tables;
* has two GSI tables:
    * *gsi-table-1* with primary key *attribute-1* and secondary key *attribute-2* and R&W capacity at 1/2 units, respectively, and it projects the keys only;
    * *gsi-table-2* with primary key *attribute-2* and secondary key *ddb-range-key* and R&W capacity at 2/1 units, respectively, and it also projects *attribute-1*;

## Usage

To run this example, execute the following commands:

```bash
terraform init
terraform plan
terraform apply   
terraform destroy 
```