# AWS 3-Tier Architecture – Java Application (Terraform)

## 📌 Project Overview
This project demonstrates the deployment of a **production-grade Java web application**
on AWS using a **3-tier architecture** implemented with **Terraform (Infrastructure as Code)**.

The architecture follows **cloud-native best practices** to ensure:
- High availability
- Scalability
- Security
- Cost efficiency

---

## 🏗 Architecture Overview

### 1️⃣ Presentation Tier
- Nginx web servers
- Application Load Balancer
- Auto Scaling Group
- Public subnets

### 2️⃣ Application Tier
- Apache Tomcat servers
- Internal communication
- Auto Scaling Group
- Private subnets

### 3️⃣ Data Tier
- Amazon RDS MySQL
- Multi-AZ deployment
- Automated backups
- Secure private subnet access

---

## 🌐 Network Design
- Custom VPC
- Public & private subnets across multiple AZs
- Internet Gateway
- NAT Gateway for private subnet access
- Security Groups with least privilege access

---

## ⚙️ Tools & Technologies
- AWS (EC2, ALB, ASG, RDS, VPC, IAM)
- Terraform
- Git & GitHub
- Linux (Amazon Linux)
- Nginx
- Apache Tomcat
- MySQL

---

## 🚀 Terraform Commands Used

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy

##Database password passed securely:
terraform apply -var="db_password=Strong@123"

##Key Outcomes:
-Application deployed successfully

-Auto Scaling tested

-Load Balancer routing verified

-RDS Multi-AZ connectivity validated
##Cleanup:
All AWS resources were safely removed using
-terraform destroy

Clean resource destruction confirmed
