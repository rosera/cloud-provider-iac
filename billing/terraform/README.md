<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_billing_budget.budget](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget) | resource |
| [google_monitoring_notification_channel.notification_channel_email](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |
| [google_monitoring_notification_channel.notification_channel_pubsub](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |
| [google_billing_account.account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/billing_account) | data source |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gcp_biling_email"></a> [gcp\_biling\_email](#input\_gcp\_biling\_email) | Billing notification email. | `string` | `"tester@gmail.com"` | no |
| <a name="input_gcp_biling_units"></a> [gcp\_biling\_units](#input\_gcp\_biling\_units) | Billing notification email. | `string` | `"tester@gmail.com"` | no |
| <a name="input_gcp_billing_account"></a> [gcp\_billing\_account](#input\_gcp\_billing\_account) | Billing account. | `string` | n/a | yes |
| <a name="input_gcp_billing_budget"></a> [gcp\_billing\_budget](#input\_gcp\_billing\_budget) | Example billing budget. | `string` | `"Example billing budget."` | no |
| <a name="input_gcp_billing_pubsub"></a> [gcp\_billing\_pubsub](#input\_gcp\_billing\_pubsub) | Billing notification pubsub. | `string` | `"billing-topic"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->