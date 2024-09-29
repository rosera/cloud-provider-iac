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
| [google_firestore_database.free_tier_database](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/firestore_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_firestore_database_type"></a> [firestore\_database\_type](#input\_firestore\_database\_type) | Firestore database type. | `string` | `"FIRESTORE_NATIVE"` | no |
| <a name="input_firestore_location_id"></a> [firestore\_location\_id](#input\_firestore\_location\_id) | Bucket name. | `string` | `"nam5"` | no |
| <a name="input_gcp_project_id"></a> [gcp\_project\_id](#input\_gcp\_project\_id) | The GCP project ID to create resources in. | `string` | n/a | yes |
| <a name="input_gcp_region"></a> [gcp\_region](#input\_gcp\_region) | Region to create resources in. | `string` | `"us-central1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->