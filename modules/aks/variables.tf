variable "environment" {
  description = "Name of the environment"
  type        = string

}
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string

}

variable "location" {
  description = "Name of the Region"
  type        = string

}


variable "aks_cluster_name" {
  description = "Name of the AKS Cluster"
  type        = string

}

variable "cluster_dns_prefix" {
  description = "Prefix of the cluster DNS"
  type        = string
  default     = "akscluster"

}

variable "public_route_table" {
  description = "ID of public route table"
  type        = string

}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string

}

variable "node_count" {
  description = "Node Count for Node/Agent Pool"
  type        = number
  default     = 1

}

variable "node_vm_size" {
  description = "Node VM Size"
  type        = string
  default     = "Standard_D2_v2"

}


variable "service_cidr" {
  description = "CIDR block of service"
  type        = string
  default     = "10.1.0.0/16"
}

variable "dns_service_ip" {
  description = "DNS Service IP"
  type        = string
  default     = "10.1.0.10"
}

variable "tags" {
  description = "Tags to associate with created resources"
  type        = map(string)

}