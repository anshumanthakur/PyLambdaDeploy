# Create a zip archive from the source code directory
data "archive_file" "origin_request_lambda_source" {
  type        = "zip"
  source_dir  = "${path.module}/source_code"  # Path to the source code directory
  output_path = "lambda.zip"
}

# Define the AWS Lambda function resource
resource "aws_lambda_function" "test_lambda" {
  function_name = "test_lambda"  # Name of the Lambda function
  handler      = "lambda_function.lambda_handler"  # Handler for the Lambda function
  role         = "test_lambda_role"  # IAM role for the Lambda function
  runtime      = "python3.8"  # Python runtime version
  source_code_hash = data.archive_file.origin_request_lambda_source.output_base64sha256  # Hash of the source code
  filename     = data.archive_file.origin_request_lambda_source.output_path  # Path to the Lambda deployment package
  timeout      = 600  # Maximum execution time for the Lambda function (in seconds)
  memory_size  = 1024  # Memory allocated to the Lambda function (in MB)
  publish      = true  # Publish a new version of the Lambda function
  environment {
    variables = {
      some_variable = "some_value"  # Environment variables for the Lambda function
    }
  }
}

# Define permissions to allow CloudWatch to invoke the Lambda function
resource "aws_lambda_permission" "allow_cloudwatch_to_call" {
  statement_id  = "AllowExecutionFromCloudWatch"  # Statement ID for the permission
  action        = "lambda:InvokeFunction"  # Permission to invoke the Lambda function
  function_name = "${aws_lambda_function.test_lambda.function_name}"  # Reference to the Lambda function
  principal     = "events.amazonaws.com"  # AWS service principal (CloudWatch)
  source_arn    = var.event_rule_Arn  # ARN of the CloudWatch event rule
}
