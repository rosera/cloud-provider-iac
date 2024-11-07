# Minikube

Creates a Small Minikube Cluster.
Adds a kubernetes developer account: `k8s-dev`.

To switch to the developer account:

```bash
sudo su - k8s-dev
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
