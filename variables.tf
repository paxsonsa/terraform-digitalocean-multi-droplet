# Terraform Module Config :: multi_instance variables
# Copyright IndieEngine 2018

# DO Token
variable "token" {
  description = "Digital Ocean API Token to use when creating tags"
  type = "string"
}

# Instance Count
variable "count" {
  description = "The number of instances to create"
  default = 1
}

# Instance Image OS 
variable "image" {
  description = "The slugname for the digitalocean image to use for the instances"
  default = "ubuntu-16-04-x64"
}

# Name of Instance
variable "prefix" {
  description = "Instance prefix, this will be the basename of the host (e.g. <instance_name>-<instance-region>-<count>v)"
  type = "string"
}

# Instance Region
variable "region" {
  description = "The region the instance should be created within."
  type = "string"
}

# Instance Size
variable "size" {
  description = "The VM's size or the compute profile. (e.g. 512mb)"
  type = "string"
}

# Instance SSH Keys
variable "ssh_keys" {
  description = "A list of SSH Key Ids to add to the instance"
  type = "list"
}

# Instance Tags
variable "tags" {
  description = "A list of tag ids to add to the instances created (useful for ansible inventory files) "
  type = "list"
}
