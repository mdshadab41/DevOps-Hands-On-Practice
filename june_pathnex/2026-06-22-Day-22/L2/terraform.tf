// Terraform — Multi-Region Kubernetes Cluster with EKS and GKE

resource "aws_eks_cluster" "nephronix_eks" {
    name           = "nephronix-eks-cluster"
    role_arn       = "aws_iam_role.eks_cluster_role.arn" 


    vpc_config {
      subnet_ids =  [aws_subnet.nephronix_subnet.id]
    }
    depends_on = [ aws_iam_role_policy_attachment.eks_cluster_role_policy ]
}

resource "google_container_cluster" "nephronix_gke" {
    name         = "nephronix-gke-cluster"
    location     = "us-central1-a"
    initial_node_count =  3
    node_config {
      machine_type = "n1-standard-1"
    }
  
}
