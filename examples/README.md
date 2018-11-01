# Terraform-AWS-DynamoDb examples

This directory provides directories with different configurations for the usage of the previously defined module, as to create configurable DynamoDb tables.

The examples here provided include:

* a [minimal exmaple](./1.minimal/README.md) with zero configuration. This deploys a DynamoDb table using only the default variables of the module, leading to a table with only a range and a sort key as schema;

* an example on how to create [Local Secondary Index tables](./2.lsi/README.md);

* an example on how to create [Global Secondary Index tables](./3.gsi/README.md);

* an example on how to provide a [full personalized configuration](./4.full/README.md) to create a DynamoDb table.

