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
| [google_project_service.free_tier_api](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_disable_dependent"></a> [api\_disable\_dependent](#input\_api\_disable\_dependent) | Api dependencies state is disabled | `string` | `false` | no |
| <a name="input_api_services_list"></a> [api\_services\_list](#input\_api\_services\_list) | List of Googleapis to enable. | `list(string)` | <pre>[<br>  "storage.googleapis.com",<br>  "firestore.googleapis.com",<br>  "bigquery.googleapis.com",<br>  "run.googleapis.com",<br>  "cloudfunctions.googleapis.com",<br>  "compute.googleapis.com",<br>  "artifactregistry.googleapis.com",<br>  "pubsub.googleapis.com"<br>]</pre> | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->