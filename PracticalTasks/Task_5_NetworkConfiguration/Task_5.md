# Task 5: Network Configuration
- **Task**: Design a secure network architecture in AWS that includes a public and private subnet, a NAT gateway, and a VPN connection to an on-premises data center.


## Creating a Site-to-Site VPN Connection in AWS

## Step-by-Step Guide

### 1. Create a Customer Gateway
1. **Navigate to Customer Gateways:**
   - In the AWS Management Console, go to the VPN section and click on "Customer Gateways."

2. **Create Customer Gateway:**
   - Click on "Create Customer Gateway."
   - Name it appropriately (e.g., "AWS Customer Gateway").

3. **Specify BGP ASN:**
   - (Optional) Enter a BGP ASN if needed.

4. **Enter IP Address:**
   - Provide the external interface IP address of your on-premises customer gateway device.

5. **Certificate ARN:**
   - (Optional) Enter the Certificate ARN for secure connection establishment.

6. **Save Configuration:**
   - Click "Create Customer Gateway" to save the settings.

### 2. Create a Virtual Private Gateway
1. **Navigate to Virtual Private Gateways:**
   - In the VPN section, click on "Virtual Private Gateways."

2. **Create Virtual Private Gateway:**
   - Click on "Create Virtual Private Gateway."

3. **Specify ASN Number:**
   - Enter an ASN number if required.

4. **Attach to VPC:**
   - Once created, attach the Virtual Private Gateway to the VPC where you want to establish the VPN connection.

### 3. Create a Site-to-Site VPN Connection
1. **Navigate to VPN Connections:**
   - In the VPN section, click on "VPN Connections."

2. **Create VPN Connection:**
   - Click on "Create VPN Connection."

3. **Select Virtual Private Gateway:**
   - Choose "Virtual private gateway" as the connection type.

4. **Specify Gateways:**
   - Select the Virtual Private Gateway and the Customer Gateway you created earlier.

5. **Configure Options:**
   - (Optional) Configure additional settings like routing, IPv4, and tunneling options if necessary.

6. **Create VPN Connection:**
   - Click "Create VPN Connection" to establish the connection.
