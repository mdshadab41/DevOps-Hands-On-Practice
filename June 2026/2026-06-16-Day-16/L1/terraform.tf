resource "aws_dynamodb_table" "nephronix-table" {
    name       = "Nephrnix Pharma Table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "ID"



    attribute {
      name  = "ID"
      type  = "S"
    }

    tags = {
        Name = "Nephronix-DDB"
    }
}