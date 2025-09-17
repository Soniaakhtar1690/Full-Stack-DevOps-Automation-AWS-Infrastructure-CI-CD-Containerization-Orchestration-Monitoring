# AMI data for Ubuntu
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

# Jenkins EC2 (Jenkins + Docker)
resource "aws_instance" "jenkins" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.jenkins_instance_type
  subnet_id              = aws_subnet.public[0].id
  vpc_security_group_ids = [aws_security_group.management.id]
  key_name               = var.key_name
  tags = { Name = "${var.project_name}-jenkins" }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y openjdk-11-jre wget gnupg2 apt-transport-https ca-certificates curl
              # install docker
              apt-get install -y docker.io
              systemctl enable --now docker
              # install Jenkins
              curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | tee \
                /usr/share/keyrings/jenkins-keyring.asc > /dev/null
              echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
                https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list
              apt-get update -y
              apt-get install -y jenkins
              systemctl enable --now jenkins
              # allow jenkins to use docker
              usermod -aG docker jenkins
              EOF
}

# Ansible / Docker Host (for running playbooks / building images if desired)
resource "aws_instance" "ansible" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.ansible_instance_type
  subnet_id              = aws_subnet.public[1].id
  vpc_security_group_ids = [aws_security_group.management.id]
  key_name               = var.key_name
  tags = { Name = "${var.project_name}-ansible" }

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y python3 python3-venv python3-pip git docker.io
              systemctl enable --now docker
              pip3 install --upgrade pip
              pip3 install ansible boto3
              EOF
}
