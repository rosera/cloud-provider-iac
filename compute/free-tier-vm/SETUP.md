# Terraform Quickstart

1. Terraform provider initialization

```bash
terraform init
```

2. Edit `terraform.tfvars`

```terraform
# The GCP Project ID where resources will be deployed
gcp_project_id = "my_awesome_project"

# The physical location for the resources
gcp_region     = "us-central1"

# The specific isolation zone within the region
gcp_zone       = "us-central1-a"
gce_machine_zone = "us-central1-a"
```

3. Validate the Terraform configuration

```bash
terraform validate
```

4. Generate a Terraform plan

Terraform will automatically attempt to use an existing `tfvars` file.

```bash
terraform plan -out="activity.tfplan"
```

5. Create the Terraform resources

```bash
terraform apply "activity.tfplan"
