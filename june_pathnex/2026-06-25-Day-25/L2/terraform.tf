// Terraform — Create CloudWatch Alarms

resource "aws_cloudwatch_metric_alarm" "nephronix_cpu_alarm" {
    alarm_name        = "nephronix=cpu-utilization-high"
    comparison_operator = "GreaterThanThreshold"
    evaluation_periods = "1"
    metric_name = "CPUUtilization"
    namespace = "AWS/EC2"
    period    = "60"
    statistic = "Average"
    threshold = "80"


    dimensions = {
      InstanceId = aws_instance.npehronix_ec2.id 
    }
    alarm_actions = [aws_sns_topic.nephronix_alerts.arn]
}

resource "aws_sns_topic" "nephronix_alerts" {
    name      = "nephronix-alerts"
  
}
