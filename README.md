```
project/
├── README.md
├── PracticalTasks/
│   ├── Task_1_InfrastructureAutomationWithTerraform
│   ├── Task_2_ComplianceAndSecurity
│   ├── Task_3_AWSServices
│   ├── Task_4_LogCollectionAndAnalysis
│   ├── Task_5_NetworkConfiguration
│   ├── Task_6_StorageManagement
│   ├── Task_7_BackupStrategy
└── TheoreticalKnowledge/
    ├── Question_1.md   
    └── Question_2.md
```

# Theoretical Knowledge

### Question 1: Explain the main differences between AWS SES, S3, and Route53. In what scenarios would you use each service?

[Answer](TheoreticalKnowledge/Question_1.md)

### Question 2: Describe the key components of a backup and disaster recovery strategy for AWS. What are the best practices to ensure data integrity and availability?

[Answer](TheoreticalKnowledge/Question_2.md)

# Practical Tasks

### Task 1: Infrastructure Automation with Terraform
- **Task**: Write a Terraform script to provision an AWS VPC with two subnets (one public and one private), an EC2 instance in the public subnet, and an RDS instance in the private subnet.

Documentation is [here](PracticalTasks/Task_1_InfrastructureAutomationWithTerraform/doc/README.md)

The source code for Terraform is [here](PracticalTasks/Task_1_InfrastructureAutomationWithTerraform)

### Task 2: Compliance and Security
- **Task**: Create a policy document that outlines the implementation of NIS2 and Kritis compliance for an AWS environment. Include measures for data protection, incident response, and access control.

[Answer](PracticalTasks/Task_2_ComplianceAndSecurity/PolicyDocument.md)

### Task 3: AWS Services
- **Task**: Set up an S3 bucket with proper access controls and configure SES to send an email notification when a new object is uploaded to the S3 bucket.

[Answer](PracticalTasks/Task_3_AWSServices/Task_3.md)

### Task 4: Log Collection and Analysis
- **Task**: Configure AWS CloudWatch to collect logs from an EC2 instance and set up an alarm for a specific log event (e.g., repeated failed login attempts).

[Answer](PracticalTasks/Task_4_LogCollectionAndAnalysis/Task_4.md)

### Task 5: Network Configuration
- **Task**: Design a secure network architecture in AWS that includes a public and private subnet, a NAT gateway, and a VPN connection to an on-premises data center.

[Answer](PracticalTasks/Task_5_NetworkConfiguration/Task_5.md)

### Task 6: Storage Management
- **Task**: Implement a lifecycle policy for an S3 bucket to transition objects to Glacier storage after 30 days and delete them after 365 days.

[Answer](PracticalTasks/Task_6_StorageManagement/Task_6.md)

### Task 7: Backup Strategy
- **Task**: Create a backup plan for an RDS database that includes automated backups, manual snapshots, and a disaster recovery solution in a different AWS region.

[Answer](PracticalTasks/Task_7_BackupStrategy/Task_7.md)
