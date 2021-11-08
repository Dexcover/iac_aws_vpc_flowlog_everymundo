resource "aws_flow_log" "vpc_flow" {
  count                = length(var.vpc_ids)
  log_destination      = "arn:aws:s3:::aws-vpc-logs-${var.account_id}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = element(var.vpc_ids, count.index)
  tags                 = {"Name"="terraform-logs-${element(var.vpc_ids, count.index)}"}
}