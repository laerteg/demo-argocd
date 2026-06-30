# main.tf

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  cluster_name    = "meu-cluster-existente"
  cluster_version = "1.31"

  # 1. Configuração de Rede Básica
  vpc_id     = "vpc-XXXXXXXXXXXXX" # Insira o ID da sua VPC existente
  subnet_ids = [
    "subnet-publica-1",          # Insira suas subnets públicas aqui
    "subnet-publica-2"
  ]

  # Endpoint subnets públicas e privadas
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true

  # Security Groups
  create_cluster_security_group = false
  cluster_security_group_id     = "sg-cluster-existente-XXXXX" # Seu SG do Cluster

  create_node_security_group    = false
  node_security_group_id        = "sg-nodes-existente-XXXXX"   # Seu SG dos Workers

  # Grupo de Nós
  eks_managed_node_groups = {
    workers_privados = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      # rodar as instâncias nas subnets privadas
      subnet_ids = [
        "subnet-privada-1",
        "subnet-privada-2"
      ]

      instance_types = ["t3.medium"]
      
      # Garante que as instâncias herdem o SG correto dos nós
      attach_cluster_primary_security_group = false
    }
  }

  tags = {
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}

