# Terraform Droplet Creator
Create droplets with proper names based on region.

```
variable "do_token" {
  default = "xxxxx"
}

variable "region" {
  default = "sfo2"
}

module "registry_droplet" {
  source = "git@github.com:paxsonsa/terraform-digitalocean-multi-droplet.git"
  token = "${var.do_token}"
  count = 1
  prefix = "registry"
  size = "512mb"
  region = "${var.region}"
  tags = "[]"
  ssh_keys = ["####id"]
}

output "instances" {
  value = "${module.registry_droplet.public_ips}"
}
```
