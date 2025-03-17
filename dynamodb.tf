resource "aws_dynamodb_table" "dynamodb_table" {

  name = local.dynamodb_table_name

  hash_key = "id" # partition_key
  #range_key = "sk" # sort_key

  attribute {
    name = "id"
    type = "S"
  }

  #attribute {
  #  name = "sk"
  #  type = "S"
  #}

  billing_mode                = "PAY_PER_REQUEST"
  deletion_protection_enabled = false

  tags = var.tags
}
