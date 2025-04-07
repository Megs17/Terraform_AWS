# AWS Infrastructure as Code (Terraform)

This project provisions a complete AWS infrastructure including networking, compute, databases, and serverless components using Terraform.

## Architecture Overview

The infrastructure includes:
- **Networking**: VPC with public and private subnets, NAT Gateway, Internet Gateway
- **Compute**: EC2 instances (public bastion hosts and private application servers)
- **Databases**: RDS MySQL and Redshift clusters
- **Serverless**: Lambda function with S3 trigger
- **Storage**: S3 bucket for Terraform state and application data

## Prerequisites

1. **AWS Account** with appropriate permissions
2. **Terraform** v1.0+ installed
3. **AWS CLI** configured with credentials
4. **Python 3.9** (for Lambda function)


## Deployment Instructions
```bash
terraform init
terraform plan
terraform apply
