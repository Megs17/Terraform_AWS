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

## Directory Structure
terraform-aws-infra/
├── modules/
│ └── network_module/ # Networking components
│ ├── IGW.tf
│ ├── NAT.tf
│ ├── outputs.tf
│ ├── routes.tf
│ ├── security_group.tf
│ ├── subnets.tf
│ ├── vpc.tf
│ └── variables.tf
├── lambda_function.py # Lambda source code
├── lambda_function.zip # Lambda deployment package
├── main.tf # Root module
├── variables.tf # Global variables
├── outputs.tf # Global outputs
├── provider.tf # AWS provider config
├── ec2.tf # EC2 instances
├── rds.tf # RDS database
├── redis.tf # Redshift cluster
├── lambda.tf # Lambda function
├── s3.tf # S3 configuration
├── lambda_role.tf # IAM roles for Lambda
└── user_data.sh # EC2 user data script
## Deployment Instructions


```bash
terraform init
terraform plan
terraform apply
