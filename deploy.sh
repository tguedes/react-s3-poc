#!/usr/bin/env sh
set -x
npm run build
set +x
aws s3 sync ./build s3://react-s3-poc-bravado-health