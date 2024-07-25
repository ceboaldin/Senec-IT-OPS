### Question 1: Explain the main differences between AWS SES, S3, and Route53. In what scenarios would you use each service?

**Amazon Simple Email Service (AWS SES)** is an email platform that allows you to send and receive emails using your email addresses and domains. We will use Amazon SES to receive mail, or we can develop software solutions such as email autoresponders, email unsubscribe systems, and applications that generate customer support tickets from incoming emails.

**AWS S3** is Amazon's simple storage service, a scalable object storage service that provides a secure and highly available storage solution for a wide variety of data. We can store and retrieve data anytime from anywhere on the web. It is commonly used for:
* Backup and restore data archiving,
* Big data analytics,
* Host static websites,
* Distribute large amounts of content to users,
* Support data lakes and machine learning applications.

**AWS Route 53** is a scalable and highly available DNS. Route53 is designed to route end-user requests to Internet applications. 

We will use Route 53 to direct traffic to AWS services like Amazon EC2, Amazon S3, and Elastic Load Balancing. We can configure DNS health checks to route traffic to healthy endpoints and manage DNS records for our domain names. Additionally, Route 53 supports domain name registration, making it easy to purchase and manage domain names directly through AWS.
