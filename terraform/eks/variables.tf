# variables.tf
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name-cluster" {
  description = "Nome EKS cluster"
  type        = string
  default     = "demo-cluster-eks"
}

variable "version-cluster" {
  description = "Nome EKS cluster"
  type        = string
  default     = "1.33"
}

variable "vpc-id" {
  description = "VPC EKS cluster"
  type        = string
  default     = "vpc-0b6653f3c399f280e"
}

variable "subnet-pub" {
  description = "Subnets publicas EKS cluster"
  type        = list(string)
  default     = ["subnet-094f6170166da27fb", "subnet-0c8e53aad5c7b625d"]
}

variable "subnet-priv" {
  description = "Subnets privadas EKS cluster"
  type        = list(string)
  default     = ["subnet-08d54292acc4ec4b0", "subnet-0ac57f9475edcd3fe"]
}

variable "sg-cluster" {
  description = "SG  EKS cluster"
  type        = string
  default     = "sg-0e9c7d3b2dc3a083a"
}

variable "sg-node" {
  description = "SG nodes EKS cluster"
  type        = string
  default     = "sg-0e9c7d3b2dc3a083a"
}

variable "ng-min" {
  description = "min nodes EKS cluster"
  type        = number
  default     = 1
}

variable "ng-max" {
  description = "max nodes EKS cluster"
  type        = number
  default     = 2
}

variable "ng-desired" {
  description = "desired nodes EKS cluster"
  type        = number
  default     = 2
}

variable "node-type" {
  description = "Instance Type EKS cluster"
  type        = list(string)
  default     = ["t2.medium"]
}

variable "tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}





