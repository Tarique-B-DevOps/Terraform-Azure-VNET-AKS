variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
}

variable "public_subnet_name" {
  description = "Public subnet name"
  type        = string
}

variable "public_subnet_address_prefix" {
  description = "Public subnet address prefix"
  type        = list(string)
}

variable "public_route_table_name" {
  description = "Public route table name"
  type        = string
}

variable "nat_gateway_ip_name" {
  description = "Public IP name for NAT gateway"
  type        = string
}

variable "nat_gateway_name" {
  description = "NAT gateway name"
  type        = string
}

variable "private_subnet_name" {
  description = "Private subnet name"
  type        = string
}

variable "private_subnet_address_prefix" {
  description = "Private subnet address prefix"
  type        = list(string)
}

variable "private_nsg_name" {
  description = "Network Security Group name for the private subnet"
  type        = string
}

variable "private_route_table_name" {
  description = "Route table name for the private subnet"
  type        = string
}

variable "tags" {
  type = map(string)

}