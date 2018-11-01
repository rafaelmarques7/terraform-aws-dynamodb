# DynamoDb Local Secondary Index example

The configuration provided in this directory creates a DynamoDb table that:

* has the name *lsi-example*;
* has primary key *ddb-hash-key*;
* has secondary key *ddb-range-key*;
* has R&W capacity of 1 units;
* is not encrypted;
* does not set the TimeToLive parameter;
* has two LSI tables;
    * *lsi-table-1* has range-key *name* and incudes *attribute-1* in the projection;
    * *lsi-table-2* has range-key *attribute-1* and projects the keys only;
* has no GSI tables;


## Usage

To run this example, execute the following commands:

```bash
terraform init
terraform plan
terraform apply   
terraform destroy 
```