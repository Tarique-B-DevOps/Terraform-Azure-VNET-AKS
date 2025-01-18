variable "environment" {
  description = "Name of the environment"
  type        = string

  validation {
    condition     = var.environment == lower(var.environment)
    error_message = "Environment name must not be in capital letters"

  }

  validation {
    condition     = length(var.environment) <= 12
    error_message = "Environment name must be in lower than or equal to 12 characters  "
  }

}
variable "resource_group_name" {
  description = "Name of the resource group for the VNet and subnets"
  type        = string
}

variable "location" {
  description = "Azure location where the resources will be deployed"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "public_subnet_name" {
  description = "Name of the public subnet"
  type        = string
}

variable "public_subnet_address_prefix" {
  description = "Address prefix for the public subnet"
  type        = list(string)
}

variable "public_route_table_name" {
  description = "Route table name for the public subnet"
  type        = string
}

variable "nat_gateway_ip_name" {
  description = "Name of the public IP for NAT gateway"
  type        = string
}

variable "nat_gateway_name" {
  description = "Name of the NAT gateway"
  type        = string
}

variable "private_subnet_name" {
  description = "Name of the private subnet"
  type        = string
}

variable "private_subnet_address_prefix" {
  description = "Address prefix for the private subnet"
  type        = list(string)
}

variable "private_nsg_name" {
  description = "Name of the network security group for the private subnet"
  type        = string
}

variable "private_route_table_name" {
  description = "Route table name for the private subnet"
  type        = string
}

# aks vars

variable "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  type        = string

}

variable "cluster_dns_prefix" {
  description = "Prefix of the cluster DNS"
  type        = string

}

variable "node_count" {
  description = "Node Count for Node/Agent Pool"
  type        = number

}

variable "node_vm_size" {
  description = "Node VM Size"
  type        = string

}

variable "service_cidr" {
  description = "CIDR block of service"
  type        = string
}

variable "dns_service_ip" {
  description = "DNS Service IP"
  type        = string
}

variable "tags" {
  description = "Tags to associate with created resources"
  type        = map(string)

}

variable "acr_repo_name" {
  description = "Name of the ACR repositories"
  type        = string

}

variable "acr_sku" {
  description = "ACR SKU type"
  type        = string

}