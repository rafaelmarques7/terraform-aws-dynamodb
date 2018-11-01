# Terraform-AWS-DynamoDb examples

This directory provides directories with different configurations for the usage of the previously defined module, as to create configurable DynamoDb tables.

The examples here provided include:

* an example with [zero configuration](./1.minimal). This deploys a DynamoDb table using only the default variables of the module, leading to a table with only a range and a sort key as schema;

* an example on how to create [Local Secondary Index tables](./2.lsi);

* an example on how to create [Global Secondary Index tables](./3.gsi);

* an example on how to provide a [full personalized configuration](./4.full) to create a DynamoDb table.

