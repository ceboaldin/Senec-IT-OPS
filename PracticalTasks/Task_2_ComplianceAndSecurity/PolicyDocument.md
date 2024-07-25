# Organization Name: [Your Organization]

## Document Title: NIS2 and Kritis Compliance Policy

**Version:** 1.0  
**Date:** [Current Date]

## Introduction

This document provides a detailed policy framework for compliance with the EU's NIS2 Directive and Kritis compliance within our AWS environment. It is designed to ensure that our infrastructure, data, and services maintain high levels of security and resilience in line with regulatory requirements.

## Policy Applicability

This policy applies to all systems, personnel, and processes that are part of or interact with our AWS environment. It encompasses all data processing and storage activities as well as all types of cloud resources such as compute instances, storage systems, and network configurations.

### 1. Data Protection

#### 1.1 Encryption

- **Data at Rest:** All sensitive data stored within AWS services (e.g., Amazon S3, Amazon EBS) must be encrypted using AWS-managed keys or customer-managed keys under AWS KMS.
- **Data in Transit:** Enforce encryption for all data transmitted between AWS services and external systems using TLS 1.2 or later.

#### 1.2 Data Integrity

- Implement versioning and MFA Delete capabilities on Amazon S3 buckets to protect against unauthorized data deletions or modifications.
- Regularly use AWS Trusted Advisor to identify and rectify any misconfigurations or vulnerabilities.

#### 1.3 Data Residency

- Adhere to data residency requirements by ensuring that data is stored and processed only in AWS Regions that comply with jurisdictional data protection regulations.

### 2. Incident Response

#### 2.1 Incident Detection

- Utilize AWS CloudTrail and Amazon CloudWatch for continuous monitoring and logging of all API activities across the AWS infrastructure to detect potentially malicious activities.
- Employ Amazon GuardDuty for enhanced threat detection and continuous monitoring.

#### 2.2 Incident Reporting

- Establish a formal incident response plan that includes immediate notification of security breaches to relevant stakeholders and authorities in compliance with NIS2 requirements.
- Maintain an up-to-date contact list for all critical response personnel and external contacts, including local regulators.

#### 2.3 Incident Recovery

- Utilize AWS Backup and AWS Disaster Recovery to ensure that critical data and systems can be restored quickly after a security incident.
- Conduct regular drills to ensure the effectiveness of incident response and recovery procedures.

### 3. Access Control

#### 3.1 User Access Management

- Implement strict IAM policies to control access to AWS resources. Ensure that access rights are granted based on the principle of least privilege.
- Use Multi-Factor Authentication (MFA) for all users accessing sensitive systems and data.

#### 3.2 Monitoring and Review

- Regularly review and audit permissions and access rights using AWS IAM Access Analyzer to ensure compliance with established policies.
- Conduct periodic access reviews and revoke unnecessary permissions proactively.

### Compliance Verification

- Regular audits will be conducted internally and by third parties to verify compliance with NIS2 and Kritis regulations.
- Maintain comprehensive logs and records of compliance efforts and incident handling as required by regulatory authorities.

### Policy Enforcement

Failure to adhere to this policy may result in disciplinary action, up to and including termination of employment, legal action, and financial consequences as dictated by regulatory penalties.

### Policy Review and Update

This policy shall be reviewed and updated annually or following significant changes to the regulatory landscape or organizational structure to ensure ongoing compliance.

### Approval

[Name of Approving Authority]  
[Title]  
[Date of Approval]