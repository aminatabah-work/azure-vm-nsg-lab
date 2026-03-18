# Azure VM NSG Lab

This project demonstrates how to provision an Azure virtual machine and secure its network access using Terraform and Network Security Group (NSG) rules.

## Overview

The goal of this project is to show how Azure compute and networking resources can be deployed using Infrastructure as Code (IaC). This lab includes a virtual machine, a virtual network, a subnet, and a Network Security Group to demonstrate secure access design.

## Azure Resources

- Azure Resource Group
- Azure Virtual Network
- Azure Subnet
- Azure Network Security Group (NSG)
- Azure Network Interface
- Azure Linux Virtual Machine
- Azure Public IP

## Security Focus

This project demonstrates how NSG rules can be used to control inbound and outbound network traffic to a virtual machine. The goal is to show secure-by-default cloud networking and least-exposure design. This project demonstrates controlled inbound access by allowing SSH (port 22) traffic through an NSG rule for administrative access to the virtual machine.

## Tools Used

- Terraform
- Microsoft Azure
- GitHub
- Infrastructure as Code (IaC)

## Why I Built This

I created this project to strengthen my Azure cloud engineering skills and demonstrate hands-on experience with Azure compute, networking, and basic cloud security controls. This project demonstrates hands-on experience designing secure Azure infrastructure, including compute, networking, and access control using Terraform.

## Status

Initial implementation complete.

## Architecture

This project provisions a secure Azure environment with the following flow:

Internet → Public IP → NSG (SSH allowed) → Subnet → Network Interface → Virtual Machine

The Network Security Group restricts access to only SSH traffic, ensuring controlled and minimal exposure.

See detailed architecture: [ARCHITECTURE.md](./ARCHITECTURE.md)

Note: This project uses a placeholder SSH public key for demonstration purposes.
For simplicity, this lab allows SSH from any source. In production, access should be restricted to trusted IP ranges.
