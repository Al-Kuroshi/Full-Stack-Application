## Udagram Infrastructure

![Architecture](architecture_diagram(1).png)

### AWS
#### RDS Postgres
For storing and retrieving data, the application server makes use of the AWS RDS Postgres database.

Database Endpoint: `database-1.crkl8lhjcic3.us-east-2.rds.amazonaws.com`
Port: 5432
#### Elastic Beanstalk
The application server is hosted on AWS Elastic Beanstalk. Elastic Beanstalk extracts and executes the application on an endpoint once it has been built, archived, and uploaded to an S3 bucket.

EB URL: `http://aws-circle-ci-api-dev.eba-2phxz2ty.us-east-2.elasticbeanstalk.com/`

#### S3 Bucket
AWS S3 Bucket is used to deploy the frontend application. The packaged assets are uploaded to an S3 bucket, which is made publicly accessible.

Bucket URL: `http://faisal-udagram.s3-website.us-east-2.amazonaws.com`
