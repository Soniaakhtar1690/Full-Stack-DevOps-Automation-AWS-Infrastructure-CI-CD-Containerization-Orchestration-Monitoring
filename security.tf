# Security group for management (SSH) & Jenkins web (8080)
resource "aws_security_group" "management" {
  name   = "${var.project_name}-management-sg"
  vpc_id = aws_vpc.this.id
  description = "Allow SSH and Jenkins web"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH"
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Jenkins UI"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = { Name = "${var.project_name}-mgmt-sg" }
}

# Security group for EKS nodes / app traffic
resource "aws_security_group" "eks_nodes" {
  name   = "${var.project_name}-eks-sg"
  vpc_id = aws_vpc.this.id
  description = "EKS worker security group"
  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    self            = true
    description     = "Allow all within SG"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = { Name = "${var.project_name}-eks-sg" }
}
