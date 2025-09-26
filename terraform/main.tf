provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "bootcamp-cluster"
  cluster_version = "1.27"
  subnets         = ["subnet-12345", "subnet-67890"] # cámbialo
  vpc_id          = "vpc-123456" # cámbialo

  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 1
      instance_types   = ["t3.small"]
    }
  }
}
