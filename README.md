# Deploy Java Application on AWS 3-Tier Architecture

##  Project Overview

This project demonstrates the deployment of a **production-grade Java web application** on **AWS using a 3-Tier Architecture**. The solution follows **cloud-native and DevOps best practices** to achieve **high availability, scalability, security, and fault tolerance**.

The application is designed and deployed using managed AWS services such as **EC2, Load Balancers, Auto Scaling, RDS, CloudFront, and ElastiCache**.

---

##  Architecture Summary

The architecture is divided into **three independent tiers**:

### 1️ Presentation Tier (Frontend)

* Nginx web servers running in an Auto Scaling Group
* Public-facing Network Load Balancer
* Amazon CloudFront for content delivery and caching

### 2️ Application Tier (Backend)

* Apache Tomcat servers running Java web application
* Internal Network Load Balancer
* Amazon ElastiCache (Redis) for session management

### 3️ Data Tier

* Amazon RDS MySQL in Multi-AZ configuration
* Automated backups and point-in-time recovery
* Read replicas for read-heavy workloads

---

##  Network Architecture

* Two VPCs:

  * `192.168.0.0/16`
  * `172.32.0.0/16`
* Public and private subnets across multiple Availability Zones
* Transit Gateway for secure inter-VPC communication
* Backend and database resources deployed in private subnets

---

##  Key Features

* Multi-AZ deployment with automatic failover
* Auto Scaling based on CPU and traffic
* Defense-in-depth security model
* Centralized logging and monitoring using CloudWatch
* Stateless application design

---

##  Success Criteria

* Application accessible via public URL
* Auto Scaling works under load
* Database connectivity verified
* Monitoring dashboards operational
* Security best practices implemented

---

##  3-Week Implementation Plan

### Week 1: Foundation & Infrastructure (Days 1–7)

* AWS account and IAM setup
* VPCs, subnets, route tables, and security groups
* RDS MySQL Multi-AZ deployment

### Week 2: Application Deployment (Days 8–14)

* Java and Maven build environment setup
* Apache Tomcat server deployment
* Load balancers and Auto Scaling Groups configuration

### Week 3: Optimization & Go-Live (Days 15–21)

* Load testing and performance tuning
* CloudWatch monitoring and alarms
* Security hardening and production launch

---

##  Application Request Flow

1. User accesses application via public URL
2. Request reaches Amazon CloudFront
3. CloudFront forwards to Public Load Balancer
4. Load Balancer routes traffic to Nginx servers
5. Nginx forwards dynamic requests to Internal Load Balancer
6. Internal Load Balancer routes to Tomcat servers
7. Tomcat processes request and accesses RDS MySQL
8. Response flows back to the user

---

##  Security Implementation

* HTTPS encryption using SSL/TLS
* Security Groups restrict tier-to-tier access
* Private subnets for backend and database
* IAM roles for secure AWS service access

---

##  Monitoring & Logging

* Amazon CloudWatch metrics and alarms
* Application and system logs
* Health checks for Auto Scaling and Load Balancers

---

##  Technologies Used

* Java (Servlets)
* Apache Tomcat
* Nginx
* AWS EC2
* AWS Auto Scaling
* AWS Load Balancers
* Amazon RDS MySQL
* Amazon ElastiCache
* Amazon CloudFront
* AWS CloudWatch
* Terraform (Infrastructure as Code)

---

##  Conclusion

This project demonstrates a **real-world, production-ready Java application deployment** using AWS 3-tier architecture. It reflects industry-standard cloud design principles and is suitable for **DevOps portfolios, capstone projects, and interviews**.

---

## Author

**Kesava **
