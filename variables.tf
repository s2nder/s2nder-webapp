
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "us-east-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t2.micro."
  default     = "t2.micro"
}

variable "api_key" {
  type        = string
  description = "(Required) API key for web app to talk to SaaS platform."
}

variable "tfe_oraganization" {
  type        = string
  description = "(Requered) Name of TFC organization"
}

variable "tfe_workspace_name" {
  type        = string
  description = "(Requered) Name of networking workspace to get information!"
}

/*
variable "public_subnets" {
  type        = list(string)
  description = "(Required) List of subnet IDs for EC2 instance deployments."
}

variable "vpc_id" {
  type        = string
  description = "(Required) VPC ID of VPC for application deployment."
}
*/

variable "playbook_repository" {
  type        = string
  description = "(Requered) URI of Ansible playbook"
}