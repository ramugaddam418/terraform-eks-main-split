#create worker node group
resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = "example-node"
  node_role_arn   = aws_iam_role.example-node.arn
  subnet_ids = [aws_subnet.my_subnet.id, aws_subnet.my_subnet2.id]
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 2
  }

  instance_types = ["t2.micro"] // Specify your instance type
  capacity_type  = "SPOT"        // Specify capacity type as "SPOT"

  # update_config {
  #   max_unavailable = 1
  # }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ]
}