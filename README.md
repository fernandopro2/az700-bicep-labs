# **AZ-700: Designing and Implementing Microsoft Azure Networking Solutions**

Welcome to the repository for exercises and Bicep templates for the **AZ-700** certification study! Here, you'll find the templates and scripts required to follow the official Microsoft course labs, along with notes and improvements based on practical experience.

---

## **Overview**

This repository contains Bicep templates for the exercises presented on the [official AZ-700 lab site](https://microsoftlearning.github.io/AZ-700-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/). The exercises cover the following topics:

- Configuration of virtual networks and subnets.
- Configuration of VPN gateways and ExpressRoute.
- Configuration of Azure Firewall and NSGs.
- Implementation of load balancers.
- Hybrid network integration.

---

## **Repository Structure**

The repository is organized as follows:

```
az700-bicep-labs/
├── templates/
│   ├── 01-virtual-network.bicep
│   ├── 02-nsg-configuration.bicep
│   ├── 03-vpn-gateway.bicep
│   ├── 04-azure-firewall.bicep
│   ├── 05-load-balancer.bicep
│   └── ...
├── outputs/
│   ├── deployment-results.md
│   ├── logs/
│   │   ├── 01-virtual-network-deploy.log
│   │   ├── ...
├── README.md
```

- **`templates/`**: Contains Bicep templates for the exercises. Each file corresponds to a specific module or task.
- **`outputs/`**: Logs and deployment results for future reference.
- **`README.md`**: This introductory and documentation file.

---

## **How to Use**

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/az700-bicep-labs.git
   cd az700-bicep-labs
   ```

2. **Prerequisites**
   - Azure CLI installed.
   - An Azure account with permissions to create resources.
   - A resource group for the exercises:
     ```bash
     az group create --name az700-labs --location eastus
     ```

3. **Running a Template**
   To deploy a template, use the command:
   ```bash
   az deployment group create --resource-group az700-labs --template-file templates/<template-name>.bicep
   ```

4. **Cleaning Up Resources**
   After completing the exercises, delete the resources to avoid unnecessary costs:
   ```bash
   az group delete --name az700-labs --no-wait --yes
   ```

---

## **Contents**

| Exercise                         | Description                                                                                      | Template File                     |
|-----------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------|
| Configuring Virtual Networks      | Create a virtual network with subnets and basic rules.                                           | `templates/01-virtual-network.bicep` |
| Configuring NSGs                  | Implement a Network Security Group with custom rules.                                           | `templates/02-nsg-configuration.bicep` |
| Configuring VPN Gateways          | Create a VPN gateway for site-to-site connection.                                               | `templates/03-vpn-gateway.bicep` |
| Configuring Azure Firewall        | Deploy and configure an Azure Firewall.                                                        | `templates/04-azure-firewall.bicep` |
| Implementing Load Balancer        | Configure a Load Balancer to distribute traffic.                                                | `templates/05-load-balancer.bicep` |

---

## **References**
- [Official AZ-700 Labs](https://microsoftlearning.github.io/AZ-700-Designing-and-Implementing-Microsoft-Azure-Networking-Solutions/)
- [Bicep Documentation](https://learn.microsoft.com/azure/azure-resource-manager/bicep/)

---
