variable "cidr-block-subnet1" {
  description = "This is subnet1 cidr block"
  type        = string
  default     = "10.0.40.0/24"
}

variable "default_route_table_id" {}
variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "avail_zone" {}
variable "env_prefix" {}
variable "my_ip" {}
variable "instance_type" {}
variable "public_key_location" {}
variable "private_key_location" {}
