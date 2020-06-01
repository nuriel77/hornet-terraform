# HORNET Terraform for Hetzner

This is a simple manifest to help deploy multiple VPS on Hetzner and provision HORNET automatically.

## Requirements

* Hetzner Account
* Generate an API key via the access menu tab (key icon)
* Make sure you have added your public SSH key in Hetzner's GUI
* Install terraform 0.12 from [here](https://www.terraform.io/downloads.html)

## Usage

### API Key

Export your Hetzner API key via:
```sh
export TF_VAR_hcloud_token="your_token_here"
```

### Init Terraform Modules

Clone this repository and run:
```sh
terrafom init
```

### Variables Configuration

Configure some variables in `variables.tf`, most importantly the name of the SSH key `vps_ssh_key` and optionally the `vps_type`.

Variables can be configured via environment variables. For example, to set the number of VPSs to deploy:

```sh
export TF_VAR_vps_count=3
```
This will override the default value in `variables.tf`.

### Provisioning Script
A simple provisioning script is provided `provision.sh`. You can modify it to fit your needs.

This script will be automatically executed on the VPSs once they start up.

Terraform will attempt to SSH into the VPSs using the SSH key loaded into your ssh-agent. Make sure it is available in your ssh-agent (`ssh-add -L`)

## Apply
Simply run:

```sh
terraform apply
```

## Destroy
Run:
```sh
terraform destroy
```
