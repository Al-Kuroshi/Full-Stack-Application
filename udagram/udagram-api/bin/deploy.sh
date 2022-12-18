#!/usr/bin/env bash

eb init aws-api --platform node.js --region us-east-1

eb use aws-api-dev

eb deploy aws-api-dev

#echo "*******__ 4.Set Env Variables....👨🏻‍💻🤌🏻  __*******"
#eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION DB_PORT=$DB_PORT PORT=$PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME AWS_S3_ENDPOINT=$AWS_S3_ENDPOINT

