# jasolber-oppg2

## Content List

1. [Module Purpose](#module-purpose)
  - [App service](#app-service-module)
  - [Database](#database-module)
  - [Networking](#network-module)
  - [Storage](#storage-module)
2. [How to Use Terraform Scripts](#how-to-use-terraform-scripts)
3. [Pre-requisites and Dependencies](#pre-requisites-and-dependencies)

# Module Purpose

This section provides an overview of the purpose of each module in the project.

## App service module
This module is responsible for deploying and managing the application services, including setting up the infrastructure and configuring application settings.

## Database module
This module is responsible for setting up and managing the database infrastructure, including creating databases, configuring database settings, and managing database users and permissions.

## Network module
This module is responsible for setting up and managing the network infrastructure, including virtual networks, subnets, and network security groups.

## Storage module
This module is responsible for provisioning and managing storage resources, including storage accounts and containers.


# How to Use Terraform Scripts

To use the Terraform scripts in this project, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Run `terraform init` to initialize the configuration.
4. Run `terraform validate` to validate the configuration.
5. Run `terraform plan -out="main.tfplan"` to see the execution plan and make the plan file `main.tfplan`.
6. Run `terraform apply "main.tfplan"` to apply the changes.
7. Run `terraform destroy` to remove the resources.

# Pre-requisites and Dependencies

Before using the Terraform scripts, make sure you have the following pre-requisites and dependencies installed:

- VS Code
- HashiCorp Terraform
- PowerShell
- Azure CLI
