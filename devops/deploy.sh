#!/bin/sh
aws s3 sync ./build s3://react-s3-poc-bravado-health --acl public-read