#!/bin/bash
set -ex

echo "Setting up AWS..."

mkdir -p ~/.aws

if ! [[ ! -z "${AWS_SECRET_ACCESS_KEY}" ]]; then
  echo "AWS_SECRET_ACCESS_KEY env not set. Cannot setup AWS"
  exit 1
fi

if ! [[ ! -z "${AWS_ACCESS_KEY_ID}" ]]; then
  echo "AWS_ACCESS_KEY_ID env not set. Cannot setup AWS"
  exit 1
fi

if ! [[ ! -z "${AWS_REGION}" ]]; then
  echo "AWS_REGION env not set. Cannot setup AWS"
  exit 1
fi

echo ""
CREDENTIALS_FILE=~/.aws/credentials
touch $CREDENTIALS_FILE
echo "[default]" >> $CREDENTIALS_FILE
echo "aws_access_key_id = ${AWS_ACCESS_KEY_ID}" >> $CREDENTIALS_FILE
echo "aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" >> $CREDENTIALS_FILE
echo "aws_region = ${AWS_REGION}" >> $CREDENTIALS_FILE
echo "[azure]" >> $CREDENTIALS_FILE
echo "aws_access_key_id = ${AWS_ACCESS_KEY_ID}" >> $CREDENTIALS_FILE
echo "aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" >> $CREDENTIALS_FILE
echo "aws_region = ${AWS_REGION}" >> $CREDENTIALS_FILE
echo "Created 'credentials' file!"

CONFIG_FILE=~/.aws/config
touch $CONFIG_FILE
echo "[default]" >> $CONFIG_FILE
echo "region=${AWS_REGION}" >> $CREDENTIALS_FILE
echo "output=json" >> $CONFIG_FILE
echo "[profile azure]" >> $CONFIG_FILE
echo "region=${AWS_REGION}" >> $CONFIG_FILE
echo "output=json" >> $CONFIG_FILE
echo "Created 'config' file!"

echo ""
echo "AWS Setup Complete!"