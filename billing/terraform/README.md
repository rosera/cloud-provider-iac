<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 6.9.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.12.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_billing_budget.budget](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget) | resource |
| [google_monitoring_notification_channel.notification_channel_email](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |
| [google_monitoring_notification_channel.notification_channel_pubsub](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |
| [google_project_service.free_tier_api](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [time_sleep.wait_api_delay](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |
| [google_billing_account.account](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/billing_account) | data source |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_create_duration"></a> [api\_create\_duration](#input\_api\_create\_duration) | Api wait duration | `string` | `"120s"` | no |
| <a name="input_api_disable_dependent"></a> [api\_disable\_dependent](#input\_api\_disable\_dependent) | Api dependencies state is disabled | `string` | `false` | no |
| <a name="input_api_services_list"></a> [api\_services\_list](#input\_api\_services\_list) | List of Googleapis to enable. | `list(string)` | <pre>[<br>  "cloudbilling.googleapis.com"<br>]</pre> | no |
| <a name="input_gcp_billing_account"></a> [gcp\_billing\_account](#input\_gcp\_billing\_account) | Billing account. | `string` | n/a | yes |
| <a name="input_gcp_billing_budget"></a> [gcp\_billing\_budget](#input\_gcp\_billing\_budget) | Example billing budget. | `string` | `"Example billing budget."` | no |
| <a name="input_gcp_billing_email"></a> [gcp\_billing\_email](#input\_gcp\_billing\_email) | Billing notification email. | `string` | `"tester@gmail.com"` | no |
| <a name="input_gcp_billing_pubsub"></a> [gcp\_billing\_pubsub](#input\_gcp\_billing\_pubsub) | Billing notification pubsub. | `string` | `"billing-topic"` | no |
| <a name="input_gcp_billing_units"></a> [gcp\_billing\_units](#input\_gcp\_billing\_units) | Billing notification email. | `string` | `"tester@gmail.com"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->