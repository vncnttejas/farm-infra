module "demo_eks_cluster" {
  source       = "../../terraform/eks-cluster"
  aws_region   = var.aws_region
  cluster-name = "terraform-eks-demo"

  egress_def = {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
  }

  ingress_def = {
    cidr_blocks = ["0.0.0.0/0"] # Update this to specific ip if required
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  }

  instance_types = ["t2.micro"]

  scaling_config = {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
