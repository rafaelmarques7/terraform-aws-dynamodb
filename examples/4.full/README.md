# GSI and attributes configuration - DynamoDB example

Note that this creates a dynamodb table that:

* has the name *full-example*;
* has primary key *ID*;
* has secondary key *name*;
* has R&W capacity of 3 and 2 units, respectively;
* has server-side encryption;
* has two attributes: *attribute-1* and *attribute-2*;
* has TimeToLive enabled on the attribute-1
* has two LSI tables;
    * *lsi-table-1* has range-key *name* and incudes *attribute-1* in the projection;
    * *lsi-table-2* has range-key *attribute-1* and projects the keys only;
* has two GSI tables:
    * *gsi-table-1* with primary key *attribute-1* and secondary key *attribute-2* and R&W capacity at 1/2 units, respectively, and it projects the keys only;
    * *gsi-table-2* with primary key *attribute-2* and secondary key *ID* and R&W capacity at 2/1 units, respectively, and it also projects all attributes;


## Execution

Run the following commands

```bash
terraform init
terraform apply   --auto-approve=true
terraform destroy --auto-approve=true
```