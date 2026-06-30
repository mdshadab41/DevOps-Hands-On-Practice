// Terraform — Enabling VPC Flow Logs for Security

resource "aws_vpc_flow_log" "nephronix_flow_log" {
    log_group_name  = "nephronix-flow-logs"
    vpc_id          = "aws_vpc_flow_logs"
    traffic_type    = "ALL"
    log_destination_tyoe  = "cloud-watch-logs"
  
}
resource "aws_cloudwatch_log_group" "nephrnix_flow_logs_group" {
  name = "nephronix-flow-logs"
}