#!/usr/bin/env sh
ls -al ./build
aws s3 sync ./build s3://react-s3-poc-bravado-health