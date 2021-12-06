#!/bin/bash
# script: ./node_modules/@qualiti-ai/releases/setup-npmrc.sh

set -e

sudo apt-get update
sudo apt-get install expect

/usr/bin/expect <<EOD
  spawn npm login --registry=https://npm.pkg.github.com --scope=@qualiti-ai
  expect {
      "Username:" {send "$GITHUB_USERNAME\r"; exp_continue}
      "Password:" {send "$GITHUB_TOKEN\r"; exp_continue}
      "Email: (this IS public)" {send "$GITHUB_EMAIL\r"; exp_continue}
  }
EOD