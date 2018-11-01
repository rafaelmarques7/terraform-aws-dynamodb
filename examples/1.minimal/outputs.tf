output "dynamodb-arn" {
  description = "The ARN of the DynamoDB."
  value       = "${module.dynamodb.dynamodb-arn}"
}
