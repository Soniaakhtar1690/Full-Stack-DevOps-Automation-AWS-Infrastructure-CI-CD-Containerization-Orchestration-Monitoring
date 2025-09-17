output "jenkins_ssh" {
  value = "ssh -i <private_key_path> ubuntu@${aws_instance.jenkins.public_ip}"
}

output "ansible_ssh" {
  value = "ssh -i <private_key_path> ubuntu@${aws_instance.ansible.public_ip}"
}

output "s3_bucket" {
  value = aws_s3_bucket.artifacts.bucket
}

output "eks_cluster_name" {
  value = aws_eks_cluster.this.name
}

output "eks_endpoint" {
  value = aws_eks_cluster.this.endpoint
}
