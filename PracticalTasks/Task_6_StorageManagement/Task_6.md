## Task 6: Storage Management
Implement a lifecycle policy for an S3 bucket to transition objects to Glacier storage after 30 days and delete them after 365 days.

## Step 1: Creating an S3 Bucket

1. **S3 console**: Open the Amazon S3 console.
2. **Create Bucket**:
   - Click **Create bucket**.
   - **Bucket name**: Enter a unique DNS-compliant name for your bucket: eg. `mytask6bucket`
   - **Region**: Select the AWS Region where you want the bucket to reside: eg. `eu-central-1`
   - Click **Create** at the bottom of the page.

## Step 2: Implementing Lifecycle Rules

1. **Open Bucket**:
   - Navigate to the newly created bucket or an existing bucket where you want to add the lifecycle rule.
2. **Management Tab**:
   - Click the **Management** tab.
   - Click **Create lifecycle rule**.
3. **Lifecycle Rule Configuration**:
   - **Rule Name**: Provide a meaningful name for your rule, such as 'MonthlyArchiveAnnualPurge'.
   - **Apply rule to all objects in the bucket**: Check this option, or specify a prefix or tags if you want to limit the rule.
4. **Current Version Actions**:
   - Click **Add transition**.
     - **Name**: 'Transition to Glacier Flexible Retrieval'
     - **Days after creation**: 30
     - **Storage class**: Select 'Glacier Flexible Retrieval (formerly Glacier)'.
   - Click **Add expiration**.
     - **Name**: 'Delete after one year'
     - **Days after creation**: 365
5. **Noncurrent Versions Actions**:
   - **No actions defined** (if you don't want to apply actions to noncurrent versions, skip this step).
6. **Review**:
   - Verify the settings.
   - Click **Save** to apply the lifecycle rule.


   <img src="img/task6_img1.png" alt="Example Image" width="600">