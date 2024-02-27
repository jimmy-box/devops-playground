# Hello world app

This app display the concept of end to end CICD using Github aad CircleCI.

This solution will creat a web app in AWS and deploy helloword app into it. It is fully automated. However it requires CircleCI setup with environment variables as stated below

Clone the repo and setup the project in circleci.
Please go to - (https://circleci.com/vcs-authorize/#:~:text=before%20September%202023%3F-,Log%20in%20with%20GitHub,-Log%20in%20with) and login using your github account.

Click on Projects > Set Up Project and follow the instructions

## Prerequisites

- Circleci account
- AWS account with vpc and public subnet
- Keypair for the EC2 instance SSH connection

### Deploy

Create these environment variables in circleci

- EC2_PUBLIC_DNS
- AWS_REGION
- EC2_PUBLIC_DNS (from the instance created)

- You need to deploy the ec2 instance first. For this you need to have AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY for the IAM user with adequate permissions (Cloudformation, EC2).
  checkout the code and make empty commit to "infra" branch. This should automatically deploy the infra.

  Once the infra is deployed, go to AWS Cloudformation portal and coppy the DNS in the output of the stack (e.g. http://ec2-18-133-248-12.eu-west-2.compute.amazonaws.com). This will be needed to deploy the application Go to circleci and create environment an variable EC2_PUBLIC_DNS and past (remember to remove the http://).

- Make a commit to the main branch to trigger the app deployment pipeline

Access the app using the ec2 instance DNS e. http://ec2-public-dns:8990/
