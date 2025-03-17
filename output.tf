output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  value = data.aws_region.current.name
}

output "lambda_arn" {
  value = module.api_lambda.lambda_arn
}

output "lambda_role_arn" {
  value = module.api_lambda.role_arn
}

output "lambda_invoke_arn" {
  value = module.api_lambda.lambda_invoke_arn
}

output "dynamodb_arn" {
  value = aws_dynamodb_table.dynamodb_table.arn
}

output "my_gateway_arn" {
  value = aws_api_gateway_rest_api.my_gateway.arn
}

output "my_gateway_url" {
  value = "${aws_api_gateway_stage.gw_stage_name.invoke_url}/${aws_api_gateway_resource.root.path_part}"
  # https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-call-api.html
}

output "environment_variables_for_lambda" {
  value = local.environment_variables
}