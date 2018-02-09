# Terraform Module Config :: multi_instance
# Copyright IndieEngine 2018
resource "digitalocean_droplet" "instance" {
  count  = "${var.count}"
  private_networking = true
  image  = "${var.image}"
  name   = "${format("%s-%s-%02dv", var.prefix, var.region, count.index + 1)}"
  region = "${var.region}"
  size   = "${var.size}"
  ssh_keys = "${var.ssh_keys}"
}
