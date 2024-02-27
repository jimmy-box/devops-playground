# To deploy

clone the repo and setup the project in circleci
Please see how to setup project in CircleCI documentation

## Prerequisites

Circleci account
AWS account with vpc and public subnet
AWS keypair for the EC2 instance

### Deploy

- You need to deploy the ec2 instance first. For this you need to have AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY for the IAM user with adequate permissions (Cloudformation, EC2).
  checkout the code and make empty commit to "infra". This should automatically deploy the infra
  Once the infra is deployed, go to AWS Cloudformation portal and coppy the DNS in the output of the stack (e.g. http://ec2-18-133-248-12.eu-west-2.compute.amazonaws.com). Go to circleci and create environment an variable EC2_PUBLIC_DNS and past (remember to remove the http://).

- Make a commit to the main branch to trigger the app deployment pipeline

Access the app using the ec2 instance DNS
