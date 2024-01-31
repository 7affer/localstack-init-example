#!/bin/bash

#init s3
awslocal s3 mb s3://example-bucket
awslocal s3 cp /fixtures/example-file.html s3://example-bucket/some-key/example-file.html --acl public-read

#init sqs
awslocal sqs create-queue --queue-name my-queue

#init sns
awslocal sns create-topic --name my-topic