
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name = "demo-cluster"
        eks_subnet_ids = ["	subnet-0a3fdf93a5aae95fb","subnet-00de4e34382658c5c","subnet-01655b5fcb6d70e0e","subnet-079a513d9ec42d26b"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {
    "node1" = {
        eks_cluster_name  = "demo-cluster"
        node_group_name   = "mynode"
        nodes_iam_role    = "eks-node-group-general1"
        node_subnet_ids   = ["subnet-0a3fdf93a5aae95fb","subnet-00de4e34382658c5c","subnet-01655b5fcb6d70e0e","subnet-079a513d9ec42d26b"]
        tags = {
             "Name" =  "node1"
         }
    }
}
