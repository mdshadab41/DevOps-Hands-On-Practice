// Terraform — Setup AWS CloudWatch for Monitoring

resource "aws_cloudwatch_log_group" "nephronix_log_group" {
    name  = "nephronix-log-group"
}

resource "aws_cloudwatch_log_stream" "nepronix_log_stream" {
    log_group_name = ws_cloudwatch_log_group.pathnex_log_group.name
      name           = "pathnex-log-stream"

}
