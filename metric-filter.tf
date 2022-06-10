resource "aws_cloudwatch_log_metric_filter" "default" {
  count          = length(keys(var.filter)) > 0 ? 1 : 0
  name           = var.filter.name
  pattern        = var.filter.pattern
  log_group_name = var.filter.log_group_name

  metric_transformation {
    name          = try(var.filter.metric_transformation.name, "")
    namespace     = try(var.filter.metric_transformation.namespace, "")
    default_value = try(var.filter.metric_transformation.default_value, null)
    value         = try(var.filter.metric_transformation.value, "")
    unit          = try(var.filter.metric_transformation.unit, null)
    dimensions    = try(var.filter.metric_transformation.dimensions, null)
  }
}