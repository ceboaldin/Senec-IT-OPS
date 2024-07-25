# AWS Secrets Manager Integration with Terraform

To securely manage sensitive information such as database credentials, we use AWS Secrets Manager. Below are the steps to add the necessary IAM policy to the Terraform execution role and create a secret in AWS Secrets Manager.

## Step 1: Add IAM Policy for Secrets Manager Access

The following IAM policy allows the Terraform execution role to access the secret stored in AWS Secrets Manager. This policy grants the `GetSecretValue` action for the specified secret.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Resource": "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyRDSSecret"
    }
  ]
}
```

## Step 2: Create a Secret in AWS Secrets Manager

Use the AWS CLI to create a new secret that stores your RDS instance credentials. Replace the placeholder values with your actual database username and password.

```bash
aws secretsmanager create-secret --name MyRDSSecret   --description "RDS instance credentials"   --secret-string '{"username":"admin","password":"password"}'
```

## Notes

- Ensure that the IAM role used by Terraform has the appropriate permissions to interact with AWS Secrets Manager.
- The `Resource` ARN should match the secret you create, so ensure consistency between your policy and the created secret.
- Keep your secrets secure and avoid hardcoding sensitive information directly in your Terraform files.

By following these steps, you can securely manage and access your secrets within your Terraform-managed AWS infrastructure.
