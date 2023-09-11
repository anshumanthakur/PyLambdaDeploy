# Data blocks for fetching the AWS account's caller identity and current region
data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Define the Lambda module, which provisions AWS Lambda resources
module "lambda" {
  source             = "../tf-modules/lambda"  # Path to the Lambda module source
  event_rule_Arn     = module.cloudwatch.event_rule_Arn  # Reference to the CloudWatch event rule ARN
}

# Define the CloudWatch module, which provisions AWS CloudWatch resources
module "cloudwatch" {
  source                = "../tf-modules/cloudwatch"  # Path to the CloudWatch module source
  Lambda_ARN            = module.lambda.Lambda_Arn  # Reference to the Lambda function's ARN
  SCHEDULE_EXPRESSION   = "cron(30 4 ? * * *)"  # Schedule expression for CloudWatch rule
}
