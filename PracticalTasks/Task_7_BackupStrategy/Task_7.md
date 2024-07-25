## Step 1: Create an RDS Instance

### Create Database
1. Click on **Databases** in the left-hand menu.
2. Click on **Create database**.

### Select Database Creation Method
1. Choose **Standard create**.

### Engine Options
1. Select our database engine (e.g., MySQL).

### Specify DB Details
1. Select the DB instance size (e.g., `db.t2.micro`).
2. Set DB instance identifier (e.g., `mydatabase`).
3. Set Master username (e.g., `admin`) and password.

### Configure Storage
1. Set allocated storage (e.g., 20 GB).
2. Enable storage autoscaling if desired.

### Availability & Durability
1. Choose Multi-AZ deployment if required for high availability.

### VPC & Security
1. Choose the VPC and subnets.
2. Set up a new or existing security group to allow database access.

### Additional Configuration
1. Configure additional options as required.

### Create Database
1. Click on **Create database**.

## Step 2: Enable Automated Backups

### Configure Automated Backups
1. While creating the database, ensure **Enable automated backups** is checked.
2. Set the retention period (e.g., 7 days).
3. Specify the backup window if needed.

## Step 3: Create Manual Snapshots

### Create a Manual Snapshot
1. In the RDS Console, select **Databases**.
2. Select the database instance we created.
3. Click on **Actions** > **Take snapshot**.
4. Enter a Snapshot name and click **Take snapshot**.

## Step 4: Set Up Disaster Recovery in a Different Region

### Cross-Region Snapshot Copy
1. In the RDS Console, select **Snapshots** in the left-hand menu.
2. Select the snapshot we want to copy.
3. Click on **Actions** > **Copy snapshot**.
4. Choose the destination region.
5. Enter a new Snapshot name.
6. Click **Copy snapshot**.

### Restore Snapshot in Another Region
1. Switch to the destination region using the region selector in the top-right corner of the console.
2. In the RDS Console, select **Snapshots**.
3. Find and select the copied snapshot.
4. Click on **Actions** > **Restore snapshot**.
5. Configure the new RDS instance details (instance type, VPC, security groups, etc.).
6. Click **Restore DB instance**.

## Step 5: Set Up Point-in-Time Recovery

### Configure Point-in-Time Recovery
1. In the RDS Console, select **Databases**.
2. Choose the database you want to restore.
3. Click on **Actions** > **Restore to point in time**.
4. Choose **Restore to latest restorable time** or specify a custom time.
5. Configure the new DB instance details.
6. Click **Restore DB instance**.