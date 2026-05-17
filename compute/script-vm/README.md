# Development VM 

Creates a Nix virtual machine.
Adds a developer account: `nix-dev`.

To switch to the developer account:

```bash
sudo su - nix-dev
``


## API

1. Enable Compute API


## Run the Terraform code

1. Terraform Initialize

```bash
terraform init
```

2. Terraform Plan

```bash
terraform plan --out tf.state
```

3. Terraform Apply

```bash
terraform apply tf.state
```
