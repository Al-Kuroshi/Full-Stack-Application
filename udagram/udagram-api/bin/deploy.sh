#!/usr/bin/env bash

eb init aws-api --platform node.js --region us-east-1

eb use aws-api-dev

eb setenv ${AWS_BUCKET} ${AWS_REGION} ${DB_PORT} ${PORT} ${POSTGRES_DB} ${POSTGRES_HOST} ${POSTGRES_PASSWORD} ${POSTGRES_USERNAME} ${AWS_S3_ENDPOINT}

eb deploy aws-api-dev


