#!/bin/bash
set -ex

echo "Ensuring unzip exists..."
apt install unzip -y

echo "Downloading aws-cli v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

echo "Unzipping aws-cli v2..."
unzip awscliv2.zip
echo "Installing aws-cli v2..."
sudo ./aws/install

echo "Cleaning up..."
rm -rf ./aws
rm awscliv2.zip

aws --version
echo "AWS CLI V2 Installed!"
