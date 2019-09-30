#!/usr/bin/env bash

echo sls version: `serverless --version`
echo current dir: `pwd`
echo dir listing: 
ls
cd GIT-repository
ls
echo packaging serverless bundle...
serverless package --package pkg
find ./pkg
serverless deploy --verbose; 