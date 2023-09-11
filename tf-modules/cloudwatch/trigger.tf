resource "aws_cloudwatch_event_target" "ctdi_ecs_scheduled_task" {
  arn       = var.Lambda_ARN
  rule      = aws_cloudwatch_event_rule.scheduling-event.name
  target_id = "lambda"
}