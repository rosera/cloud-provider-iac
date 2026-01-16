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

## VM Access

1. SSH to VM
2. Swith to Nix user
  ```
  sudo su - nix-dev
  ```
3. Create `shell.nix` e.g.
   ```
   with import <nixpkgs> {};

   pkgs.mkShell {
     name = "python-dev";

     nativeBuildInputs = with pkgs; [
      python313
     ];

     LANGUAGE = "Python";
     VERSION  = "python --version";

     shellHook = ''
      # Optional: Script environment start up 
      echo "Welcome to $LANGUAGE Development Environment"
      $VERSION
      '';
   }
   ```
   
5. Run nix environment
   ```
   nix-shell
   ```
6. Run experiment in the Nix environment.
