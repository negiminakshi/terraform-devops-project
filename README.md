# Terraform DevOps Project

## Project Overview

This project demonstrates an end-to-end DevOps solution using Terraform, Docker, PostgreSQL, GitHub Actions, and AWS.

The infrastructure provisions a secure AWS environment where an Application Load Balancer routes traffic to an ECS Fargate service running inside private subnets. The application connects to a private PostgreSQL RDS database. The project also includes Docker Compose for local database testing, backup and restore automation, and a CI pipeline using GitHub Actions.

---

## Architecture

```
                    Internet
                        │
                        ▼
            Application Load Balancer
                        │
                        ▼
                ECS Fargate Service
                        │
                        ▼
             PostgreSQL RDS (Private)
```

---

## Technologies Used

- Terraform
- AWS VPC
- AWS ECS Fargate
- AWS RDS PostgreSQL
- Application Load Balancer
- Docker
- Docker Compose
- PostgreSQL
- GitHub Actions
- Bash

---

## Project Structure

```
terraform-devops-project
│
├── .github/
│   └── workflows/
│       └── ci.yaml
│
├── database/
│   ├── docker-compose.yml
│   ├── .env
│   ├── init/
│   │   ├── 01_schema.sql
│   │   └── 02_seed.sql
│   |
│   └── scripts/
│       ├── backup.sh
│       └── restore.sh
|       |__ backups/
│
├── infra/
│   ├── envs/
│   │   ├── dev/
│   │   └── prod/
│   │
│   └── modules/
│       ├── network/
│       ├── ecs/
│       └── rds/
│
└── README.md
```

---

## Features

- Modular Terraform Infrastructure
- Reusable Terraform Modules
- Separate Dev and Prod Environments
- AWS VPC with Public and Private Subnets
- Application Load Balancer
- ECS Fargate Deployment
- Private PostgreSQL RDS
- Docker Compose Local Database
- Automated Database Initialization
- Backup and Restore Scripts
- GitHub Actions CI Pipeline

---

## Infrastructure Components

### Network

- VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- Route Tables

### Security

- ALB Security Group
- ECS Security Group
- RDS Security Group

### Compute

- ECS Cluster
- ECS Task Definition
- ECS Service

### Database

- PostgreSQL RDS
- Private Subnets
- Backup Retention
- Deletion Protection

---

## Local Database

Start PostgreSQL

```bash
cd database
docker compose up -d
```

Connect

```bash
docker exec -it hotel-postgres psql -U postgres -d hotel_db
```

---

## Backup Database

```bash
./scripts/backup.sh
```

---

## Restore Database

```bash
./scripts/restore.sh backup.sql
```

---

## Terraform

Initialize

```bash
terraform init
```

Plan

```bash
terraform plan
```

Apply

```bash
terraform apply
```

Destroy

```bash
terraform destroy
```

---

## CI/CD

GitHub Actions automatically performs:

- Checkout Repository
- Terraform Format Check
- Terraform Initialization
- Terraform Validation
- Docker Build

---

## Future Improvements

- Deploy application automatically to ECS
- Store Terraform state in S3 with DynamoDB locking
- Add monitoring using Prometheus and Grafana
- Add CloudWatch alarms
- Add Infrastructure Testing
- Add Terraform Workspaces

---

## Author

**Minakshi Negi**

Aspiring DevOps Engineer
