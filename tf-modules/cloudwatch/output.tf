
output "event_rule_Arn" {
  description = "Event_Rule ARN"
  value       =  aws_cloudwatch_event_rule.scheduling-event.arn
}

output "cloudwatch_log_group_name" {
  description ="cloudwatch Log group"
  value = aws_cloudwatch_log_group.log-group.name
}