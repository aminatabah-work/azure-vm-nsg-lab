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

This helps ensure the Terraform code remains consistently formatted and valid as changes are made.

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

## Status

Initial implementation complete.
