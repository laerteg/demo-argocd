# variables.tf
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name-cluster" {
  description = "Nome EKS cluster"
  type        = string
  default     = ""
}

variable "vpc-id" {
  description = "VPC EKS cluster"
  type        = string
  default     = ""
}

variable "subnet-pub" {
  description = "Subnets publicas EKS cluster"
  type        = string
  default     = ""
}

variable "subnet-priv" {
  description = "Subnets privadas EKS cluster"
  type        = string
  default     = ""
}

variable "sg-cluster" {
  description = "SG  EKS cluster"
  type        = string
  default     = ""
}

variable "sg-node" {
  description = "SG nodes EKS cluster"
  type        = string
  default     = ""
}

variable "ng-min" {
  description = "min nodes EKS cluster"
  type        = string
  default     = "1"
}

variable "ng-max" {
  description = "max nodes EKS cluster"
  type        = string
  default     = "2"
}

variable "ng-desired" {
  description = "desired nodes EKS cluster"
  type        = string
  default     = "2"
}

variable "node-type" {
  description = "Instance Type EKS cluster"
  type        = string
  default     = "2"
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}





