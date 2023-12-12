# Modulo do repo do terraform que parece simples!!
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = local.cluster_name
  cluster_version = var.cluster_version

  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
  eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

  }

  eks_managed_node_groups = {
    node1 = {
      name = "eks-node-1"

      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 2
      desired_size = 2
    }

    node2 = {
      name = "eks-node-2"

      instance_types = ["t3.medium"]

      min_size     = 1
      max_size     = 2
      desired_size = 2
    }

    #   node3 = {
    #     name = "eks-node-2"

    #     instance_types = ["t3.medium"]

    #     min_size     = 1
    #     max_size     = 2
    #     desired_size = 2
    #   }
    # }
    # tags = {
    #   managedBy = "terraform"
    #   owner     = var.owner
    # }
  }
}