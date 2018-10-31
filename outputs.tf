output "dynamodb_arn" {
  description = "The ARN of the DynamoDB."
  value       = "${aws_dynamodb_table.ddb_table.arn}"
}
