# Terraform Module Config :: multi_instance outputs
# Copyright IndieEngine 2018
output "public_ips" {
  description = "map output of the hostname and public ip for each instance"
  value = "${zipmap(digitalocean_droplet.instance.*.name, digitalocean_droplet.instance.*.ipv4_address)}"
}

output "host_private_ips" {
  description = "output map of the hostnames and their private ip for each instance"
  value = "${zipmap(digitalocean_droplet.instance.*.name, digitalocean_droplet.instance.*.ipv4_address_private)}"
}
