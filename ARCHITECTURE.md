# Architecture Overview

This project provisions a secure Azure virtual machine environment using Terraform.

## Architecture Diagram

```text
+-----------------------------+
| Azure Resource Group        |
| rg-vm-nsg-lab               |
+--------------+--------------+
               |
      +--------v---------+
      | Virtual Network  |
      | vnet-vm-nsg-lab  |
      +--------+---------+
               |
      +--------v---------+
      | Subnet           |
      | subnet-app       |
      +--------+---------+
               |
      +--------v---------+
      | NSG              |
      | allow SSH        |
      +--------+---------+
               |
      +--------v---------+
      | Network Interface|
      | nic-vm-lab       |
      +--------+---------+
               |
      +--------v---------+
      | Linux VM         |
      | abah-vm-lab      |
      +------------------+

Internet
   |
   v
Public IP
