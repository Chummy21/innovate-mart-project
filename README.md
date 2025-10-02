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
1. Created a **VPC** and stored the variables in `terraform.tfvars` with all dependencies like route tables, subnets, and gateways attached.
