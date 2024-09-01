# Terraform

![image](https://github.com/user-attachments/assets/71453db3-bae5-4897-9577-5b6a373097bc)

Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. 

Terraform creates and manages resources on cloud platforms and other services by interacting with their application programming interfaces (APIs). Providers allow Terraform to work with almost any platform or service that has an accessible API.

The core Terraform workflow consists of three stages:

1. **Write:** You define resources, which may be across multiple cloud providers and services. For example, you might create a configuration to deploy an application on virtual machines in a Virtual Private Cloud (VPC) network with security groups and a load balancer.
2. **Plan:** Terraform creates an execution plan describing the infrastructure it will create, update, or destroy based on the existing infrastructure and your configuration.
3. **Apply:** On approval, Terraform performs the proposed operations in the correct order, respecting any resource dependencies. For example, if you update the properties of a VPC and change the number of virtual machines in that VPC, Terraform will recreate the VPC before scaling the virtual machines.

![image](https://github.com/user-attachments/assets/8fb47a67-4075-4f6a-bf0f-5f1bec9fe2a1)
