# GENERATE.md

How to generate Terraform documentation:

## Nix

Add terraform-docs to the host
```bash
nix-shell -p terraform-docs
```

## Generate

To generate documentation:

```bash
terraform-docs markdown table --output-file README.md . 
```
