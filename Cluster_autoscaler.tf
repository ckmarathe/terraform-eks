

module "eks-cluster-autoscaler" {
  source  = "lablabs/eks-cluster-autoscaler/aws"
  version = "1.6.2"
  # insert the 3 required variables here
  cluster_identity_oidc_issuer = module.eks.cluster_oidc_issuer_url
  cluster_identity_oidc_issuer_arn = module.eks.oidc_provider_arn
  cluster_name = module.eks.cluster_id
}