resource "aws_cloudwatch_log_metric_filter" "default" {
  for_each = { for filter in try(var.filters, []) : filter.name => filter }
  name           = each.value.name
  pattern        = each.value.pattern
  log_group_name = each.value.log_group_name

  metric_transformation {
    name          = try(each.value.metric_transformation.name, "")
    namespace     = try(each.value.metric_transformation.namespace, "")
    default_value = try(each.value.metric_transformation.default_value, null)
    value         = try(each.value.metric_transformation.value, "")
    unit          = try(each.value.metric_transformation.unit, null)
    dimensions    = try(each.value.metric_transformation.dimensions, null)
  }
}