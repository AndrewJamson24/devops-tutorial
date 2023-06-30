#!/bin/bash

###############
# Author: Sandu Boboc
# Date: 30-06-2023
#
# Version: V1
#
# This scripts will report the AWS resource usage
###############


set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

#list EC2 Instances

echo "Print list of ec2"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceID"

#list AWS Lambda

echo "Print list of lambda functions"
aws lambda list-function >> resourceTracker

# list IAM users
echo "Print list of IAM users"
aws iam list-users





