# Create an AWS CloudWatch Event Rule for scheduling events
resource "aws_cloudwatch_event_rule" "scheduling-event" {
  name                = "test_lambda-event-rule"  # Name of the event rule
  description         = "Triggering lambda"  # Description of the event rule
  schedule_expression = var.SCHEDULE_EXPRESSION  # Schedule expression for triggering events
  role_arn            = null  # Role ARN (set to null for no specific role)
  is_enabled          = true  # Enable the event rule
  tags = {
    purpose = "To trigger lambda"  # Tags for the event rule
    owner   = "anshuman.thakur@pb.com"  # Owner of the event rule
  }
}

# Create an AWS CloudWatch Log Group
resource "aws_cloudwatch_log_group" "log-group" {
  name             = "test_lambda"  # Name of the log group
  retention_in_days = 0  # Set log retention to 0 days (no retention)
}
