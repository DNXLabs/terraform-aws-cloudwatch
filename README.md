# AWS Cloudwatch Terraform module

Terraform module which creates Cloudwatch resources on AWS.

[![Lint Status](https://github.com/DNXLabs/terraform-aws-cloudwatch/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-cloudwatch/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-cloudwatch)](https://github.com/DNXLabs/terraform-aws-cloudwatch/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.54 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.54 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| actions\_enabled | Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true. | `bool` | `true` | no |
| alarm\_actions | The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN). | `list(string)` | `null` | no |
| alarm\_description | The description for the alarm. | `string` | `null` | no |
| alarm\_name | The descriptive name for the alarm. This name must be unique within the user's AWS account. | `string` | n/a | yes |
| comparison\_operator | The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. | `string` | n/a | yes |
| create\_metric\_alarm | Whether to create the Cloudwatch metric alarm | `bool` | `true` | no |
| datapoints\_to\_alarm | The number of datapoints that must be breaching to trigger the alarm. | `number` | `null` | no |
| dimensions | The dimensions for the alarm's associated metric. | `any` | `null` | no |
| evaluate\_low\_sample\_count\_percentiles | Used only for alarms based on percentiles. If you specify ignore, the alarm state will not change during periods with too few data points to be statistically significant. If you specify evaluate or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. The following values are supported: ignore, and evaluate. | `string` | `null` | no |
| evaluation\_periods | The number of periods over which data is compared to the specified threshold. | `number` | n/a | yes |
| extended\_statistic | The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100. | `string` | `null` | no |
| filters | Provides a CloudWatch Log Metric Filter resource. | `any` | `[]` | no |
| insufficient\_data\_actions | The list of actions to execute when this alarm transitions into an INSUFFICIENT\_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN). | `list(string)` | `null` | no |
| metric\_name | The name for the alarm's associated metric. See docs for supported metrics. | `string` | `null` | no |
| metric\_query | Enables you to create an alarm based on a metric math expression. You may specify at most 20. | `any` | `[]` | no |
| namespace | The namespace for the alarm's associated metric. See docs for the list of namespaces. See docs for supported metrics. | `string` | `null` | no |
| ok\_actions | The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN). | `list(string)` | `null` | no |
| period | The period in seconds over which the specified statistic is applied. | `string` | `null` | no |
| statistic | The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum | `string` | `null` | no |
| tags | A mapping of tags to assign to all resources | `map(string)` | `{}` | no |
| threshold | The value against which the specified statistic is compared. | `number` | `null` | no |
| threshold\_metric\_id | If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY\_DETECTION\_BAND function. | `string` | `null` | no |
| treat\_missing\_data | Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching. | `string` | `"missing"` | no |
| unit | The unit for the alarm's associated metric. | `string` | `null` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-cloudwatch-template/blob/master/LICENSE) for full details.