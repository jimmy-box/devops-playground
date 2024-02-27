!#/bin/bash

EC2-INSTANCE-STACK="ec2-webapp-stack"


set -e 

if ! aws cloudformation describe-stacks --stack-name $EC2-INSTANCE-STACK ; then
    echo "1"
    echo "Stack ${EC2-INSTANCE-STACK} does not exist... Creating the stack..."
    aws cloudformation create-stack --stack-name $frontend_mfe_loader_stack --template-body file://ec2/resources.yaml --parameters GitHubBranch=${GitHubBranch} --capabilities CAPABILITY_NAMED_IAM
else
    echo "Updating ${EC2-INSTANCE-STACK} stack.."
    aws cloudformation deploy --stack-name $EC2-INSTANCE-STACK --template-file ec2/resources.yaml --capabilities CAPABILITY_NAMED_IAM --no-fail-on-empty-changeset
fi




# if [ ! -z "$PREVIOUS_INSTANCE_NAME" ]
#      then
#      INSTANCE_ID=`aws ec2 describe-instances --filters "Name=tag:Name,Values=$PREVIOUS_INSTANCE_NAME" --query "Reservations[].Instances[].[InstanceId]" --output text`
#      if [ ! -z "$INSTANCE_ID" ]
#      then
#      echo "Old instance ID: $INSTANCE_ID"
#      aws ec2 terminate-instances --instance-ids $INSTANCE_ID
#      echo "Terminated the previous instance"
#      else
#      echo "Did not found any instance with provided name"
#      fi
#      else
#      echo "Previous instance name not provided so moving forward"
#      fi

#      if [ ! -z "$NEW_INSTANCE_NAME" ]
#      then
#      NEW_INSTANCE_ID=`aws ec2 run-instances --image-id ami-07ffb2f4d65357b42 --count 1 --instance-type t2.micro --key-name CircleCI --security-group-ids sg-0791c0115b3a5100a --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$NEW_INSTANCE_NAME}]" --query "Instances[].[InstanceId]" --output text`
#      echo "New instance Id: $NEW_INSTANCE_ID"
#      echo "Waiting for New Instance Start...."
#      aws ec2 wait instance-running --instance-ids $NEW_INSTANCE_ID
#      echo "Instance Successfully started"
#      NEW_INSTANCE_IP=`aws ec2 describe-instances --instance-ids $NEW_INSTANCE_ID --query "Reservations[].Instances[].NetworkInterfaces[].Association.PublicIp" --output text`
#      echo "New Instance IP: $NEW_INSTANCE_IP"
#      echo "export NEW_INSTANCE_IP=$NEW_INSTANCE_IP" >> $BASH_ENV
#      else
#      echo "New Instance Name is Required!"
#      fi