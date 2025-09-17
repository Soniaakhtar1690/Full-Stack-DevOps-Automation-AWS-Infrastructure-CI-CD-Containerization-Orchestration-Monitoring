**This project is a real case study**

As a DevOps engineer, I was tasked by a retail company to design and implement an end-to-end solution. This involved provisioning AWS   
infrastructure with Terraform, building CI/CD pipelines with Jenkins, containerizing applications with Docker, deploying on Kubernetes with Ansible, and monitoring the system using Prometheus and Grafana.
Due to privacy reasons, I can't upload the actual code publicly, but a sample Java project has been shared for usage. It is a maven project and has src and test folders created
in it. It has a POM.xml file, which lists all the needed dependencies to execute this project.

** Business Challenge & Solution **

ABC Technologies, a leading online retail company, acquired a large offline retail chain. The legacy development and deployment processes were slow, hard to maintain, low low-performing. 
and not scalable, leading to operational losses. The company needed to quickly modernize its application deployment for product management features.
The project aimed to implement a full DevOps solution, integrating CI/CD with Jenkins, containerization with Docker, deployment with Ansible and Kubernetes, and infrastructure automation 
with Terraform on AWS. This approach ensured the application would be highly available, scalable, performant, and easy to maintain.

** Business Benefits **

-->High availability and scalability
-->Faster deployment and time-to-market
-->Improved application performance
-->secure and centralized secrets management with Vault
-->Reduced production errors and manual intervention
-->Frequent releases and better customer experience


**Key Highlights:**

- Infrastructure as Code with **Terraform**  
- Continuous Integration & Deployment with **Jenkins**  
- Containerization using **Docker**  
- Deployment orchestration via **Kubernetes**  
- Secrets management with HashiCorp Vault
- Configuration management with **Ansible**  
- Monitoring and observability using **Prometheus** and **Grafana**

## Architecture
![Architecture Diagram](https://github.com/Soniaakhtar1690/Full-Stack-DevOps-Automation-AWS-Infrastructure-CI-CD-Containerization-Orchestration-Monitoring/blob/main/imagge.png)

The architecture includes:
1. AWS VPC, subnets, security groups, and EC2 instances  
2. Application deployment in Docker containers  
3. Kubernetes cluster for container orchestration 
4. HashiCorp Vault for Secrets management
5. Jenkins CI/CD pipelines for building, testing, and deployment  
6. Ansible for automated deployment and server configuration  
7. Prometheus and Grafana for monitoring CPU, memory, network, and app health  

## Tools & Technologies
- **Cloud & Infrastructure:** AWS (EC2, VPC, Subnets, Security Groups, ALB, S3)  
- **CI/CD:** Jenkins  
- **Containers & Orchestration:** Docker, Kubernetes  
- **Configuration Management:** Ansible  
- **Secret Management: ** Hashicorp Vault
- **Monitoring:** Prometheus, Grafana  
- **Infrastructure as Code:** Terraform  
- **Version Control:** GitHub  

### Prerequisites
- AWS account with proper permissions  
- Local machine with Terraform, Jenkins, Docker, Ansible, and kubectl installed  
- GitHub repository for source code  
