#!/bin/bash

############################
#Author: Avneet Ahuja
#Date: 07/13/2023
#
#Version: v0
#
#This script will report the AWS resource usage
############################

set -x

#AWS EC2
#AWS IAM users
#AWS s3
#AWS Lambda

#list s3 buckets
echo "List of s3 buckets:"
aws s3 ls

#list ec2 instances
echo "List of ec2 Instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda functions
echo "Lambda Functions:"
aws lambda list-functions

#list iam users
echo "IAM Users:"
aws iam list-users 
