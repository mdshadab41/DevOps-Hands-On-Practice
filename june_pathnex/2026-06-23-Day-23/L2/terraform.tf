# Terraform — Serverless API Gateway with Lambda Integration

resource "aws_api_gateway_rest_api" "nephrnix_api" {
    name     = "nephronix-api"
    description = "Nephronix API"
  
}
resource "aws_lambda_function" "nephronix_lambda" {
  function_name = "nephronix-lambda"
  runtime       = "python 3.8"
  role          = "aws_iam_role.lambda_exec_role.arn"
  filename      = "lambda.zip"

}

resource "aws_api_gateway_integration" "lambda_integration" {
    rest_api_id  = aws_api_gateway_rest_api.nephronix_api.id 
    resource_id  = aws_api_gateway_resource.nephronix_reosuce.id 
    http_method = aws_api_gateway_method.nephronix_method.http_method
    integration_http_method  = "POST"
    type     = "AWS_PROXY"
    uri      = aws_lambda_function.nephronix_lambda.invoke_arn 
  
}
