# AWS Serverless Infrastructure with Terraform

![Terraform Logo](https://www.terraform.io/assets/images/logo-hashicorp-3f10732f.svg)

This repository contains Terraform configurations and code for setting up a serverless infrastructure on AWS. The infrastructure includes AWS Lambda functions, AWS CloudWatch Event Rules, and other resources. It also demonstrates best practices for managing AWS infrastructure as code (IaC) using Terraform.

**Key Highlight:** Deploy multiple Python files under a single Lambda function, allowing you to organize your Lambda code efficiently while maintaining a modular and maintainable architecture.

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Terraform Modules](#terraform-modules)
- [Deployment Steps](#deployment-steps)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Before you begin, make sure you have the necessary prerequisites and AWS credentials configured.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed locally.
- AWS account with appropriate permissions and AWS CLI configured.

## Terraform Modules

This repository uses custom Terraform modules to provision resources. The modules are located in the `tf-modules` directory. Each module is designed to manage specific AWS resources, making it easy to organize and maintain your infrastructure.

- `tf-modules/lambda`: Manages AWS Lambda functions and their associated resources.
- `tf-modules/cloudwatch`: Manages AWS CloudWatch resources, including event rules.

## Deployment Steps

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/your-repo.git
   cd your-repo
2. Update the Terraform variables and configuration files as needed. Ensure that you replace sensitive information such as AWS access keys with environment variables or use a secure method to manage secrets.

3. Initialize Terraform and download the required providers: