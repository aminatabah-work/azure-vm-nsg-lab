# Azure VM NSG Lab

This project provisions a secure Azure virtual machine environment using Terraform, emphasizing cloud networking, controlled administrative access, infrastructure validation, and Azure security best practices.

## Overview

This lab demonstrates how to design and deploy Azure infrastructure using Infrastructure as Code (IaC). The environment includes a Linux virtual machine, virtual network, subnet, public IP, network interface, and Network Security Group (NSG) rules to support secure administrative access. The repository also includes GitHub Actions to automatically run Terraform formatting, initialization, and validation checks on every push.

## Azure Resources

- Azure Resource Group
- Azure Virtual Network
- Azure Subnet
- Azure Network Security Group (NSG)
- Azure Public IP
- Azure Network Interface
- Azure Linux Virtual Machine

## Security Design

This project uses an NSG rule to allow SSH (port 22) for administrative access to the virtual machine. The design demonstrates controlled inbound access, network segmentation through a subnet, and explicit attachment of a public IP to support remote connectivity.

For simplicity, this lab allows SSH from any source. In a production environment, access should be restricted to trusted IP ranges and managed through tighter security controls.

This design reflects a foundational cloud security approach, where access is explicitly defined, network boundaries are enforced, and infrastructure is provisioned in a repeatable and auditable way.

Note: This project uses a placeholder SSH public key for demonstration purposes.

## CI/CD Validation

This repository uses GitHub Actions to automatically run:

- `terraform fmt -check -recursive`
- `terraform init`
- `terraform validate`

This pipeline enforces infrastructure quality by automatically validating Terraform configurations before deployment. 

It ensures:
- Consistent formatting across the codebase
- Early detection of configuration errors
- Reliable, production-ready infrastructure definitions

## Terraform Design

This project follows a modular Terraform architecture:

- Reusable modules for infrastructure components (e.g., Key Vault)
- Centralized variable management for flexibility
- Separation of concerns between networking, compute, and security

This approach improves maintainability, scalability, and reusability of infrastructure code.

## Why I Built This

I created this project to strengthen my Azure cloud engineering skills and demonstrate hands-on experience with infrastructure provisioning, networking, security controls, and CI/CD validation in a cloud environment.

## Skills Demonstrated

- Azure Infrastructure Provisioning
- Terraform (Infrastructure as Code)
- Azure Networking
- Network Security Groups (NSGs)
- Linux Virtual Machine Deployment
- Public IP and Network Interface Configuration
- GitHub Actions CI/CD
- Terraform Validation and Workflow Automation

## Architecture

This project provisions a secure Azure environment with the following flow:

Internet → Public IP → NSG (SSH allowed) → Subnet → Network Interface → Virtual Machine

See detailed architecture: [ARCHITECTURE.md](./ARCHITECTURE.md)


## What This Project Demonstrates

This project demonstrates the ability to design and deploy cloud infrastructure using Infrastructure as Code while following security and engineering best practices.

Key capabilities shown:

- Designing secure Azure networking with NSG-controlled access
- Deploying and managing cloud resources using Terraform
- Structuring infrastructure using reusable modules
- Implementing CI/CD pipelines to validate infrastructure changes
- Understanding Terraform workflows (init, plan, apply, destroy)
- Writing clear documentation for real-world usability

## How to Run This Project

1. Clone the repository:

```bash
git clone https://github.com/aminatabah-work/azure-vm-nsg-lab.git
cd azure-vm-nsg-lab
