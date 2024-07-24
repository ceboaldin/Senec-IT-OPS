

Add the necessary IAM policy to your Terraform execution role to access the secret:

```JSON
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

```bash
aws secretsmanager create-secret --name MyRDSSecret \
  --description "RDS instance credentials" \
  --secret-string '{"username":"admin","password":"password"}'
```