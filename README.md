# InnovateMart EKS Deployment – Project Bedrock

### Name: Sylvia Chioma Okafor

### AltSchool ID: ALT/SOE/024/4939

---
## 📌 Overview
This repository contains my submission for the AltSchool Cloud Engineering Program (Semester 3, Month 2) assessment.

The goal of this project focuses on deploying **InnovateMart’s Retail Store Application** to AWS **Elastic Kubernetes Service (EKS)** with an emphasis on automation, security, and scalability.

The implementation covers:  
- **Infrastructure as Code (IaC)** using Terraform  
- **Kubernetes deployment** of microservices  
- **CI/CD automation** with GitHub Actions  
- **IAM roles and developer access**

---

## 🚀 Step 1: Provisioning Infrastructure with Terraform

1. I started by creating a Virtual Private Cloud (VPC) using Terraform. To ensure flexibility and reusability, I stored all variable values inside terraform.tfvars.

   - Defined CIDR block for the VPC.

   - Configured public and private subnets across multiple Availability Zones for high availability.

   - Attached Internet Gateway (IGW) to enable external connectivity for public subnets.

   - Created NAT Gateways to allow private subnets to access the internet securely.

   - Added Route Tables and associated them with the appropriate subnets (public or private).

  - Managed input variables via variables.tf and provided their values inside terraform.tfvars for better organization.

   This setup ensures the EKS cluster runs inside a secure, scalable, and highly available network.

   ![Screenshot](screenshot/image0.png)
   terraform.tfvars
   ![Screenshot](screenshot/terraform.tfvars.png) 
   variables.tf
   ![Screenshot](screenshot/variables.tf.png)  

2. Provisioned **EKS cluster**:
   
   - After setting up the VPC, I provisioned an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform.
   
   - Cluster Name: innovatemart-cluster
  
   - Kubernetes Version: 1.30
  
   - Node Group: t3.small (EKS Managed Node Group)
  
   - Scaling Configuration:

     Desired nodes: 2

     Minimum nodes: 2

     Maximum nodes: 4

     This setup ensures the cluster has enough compute capacity to handle workloads, while maintaining scalability through auto-scaling between 2–4 nodes.

     The cluster was configured with IAM roles, security groups, and add-ons (CoreDNS, VPC CNI, kube-proxy, etc.) to ensure proper networking, service discovery, and cluster management.
     
   - ![Screenshot](screenshot/eks-clusters.tf.png)
     
3. IAM Roles & Policies:  

   To enable secure access and fine-grained permissions, I created the following IAM roles and policies:
   
   - EKS Cluster Role – Grants the EKS control plane the necessary permissions to manage AWS resources such as EC2 instances and networking.

   - Node Group Role – Provides worker nodes (EC2 instances in the node group) with permissions to connect to the EKS cluster and interact with AWS services (e.g., pulling images from         ECR, using VPC CNI).

   - Read-Only Developer User – An IAM user with restricted access (view-only) to the cluster, following the principle of least privilege. This ensures developers can inspect resources        without making changes.
   
     ![Screenshot](screenshot/iam.tf1.png)  
     ![Screenshot](screenshot/iam.tf1.png)  

---
