#!/bin/bash
# script: ./node_modules/@qualiti-ai/releases/setup-npmrc.sh

set -e

if [ -z "$QUALITI_GITHUB_USERNAME" ]; then
  echo ""
  echo "ERROR: No QUALITI_GITHUB_USERNAME defined in environment variables. Be sure to set your username in Gitpod or in your environment variables before continuing."
  exit 1
fi

if [ -z "$QUALITI_GITHUB_EMAIL" ]; then
  echo ""
  echo "ERROR: No QUALITI_GITHUB_EMAIL defined in environment variables. Be sure to set your username in Gitpod or in your environment variables before continuing."
  exit 1
fi

if [ -z "$GITHUB_TOKEN" ]; then
  echo ""
  echo "ERROR: No GITHUB_TOKEN defined in environment variables. Be sure to set your username in Gitpod or in your environment variables before continuing."
  exit 1
fi

sudo apt-get update && sudo apt-get install expect -yq --no-install-recommends

/usr/bin/expect <<EOD
  spawn npm login --registry=https://npm.pkg.github.com --scope=@qualiti-ai
  expect {
      "Username: " {send "$QUALITI_GITHUB_USERNAME\r"; exp_continue}
      "Password: " {send "$GITHUB_TOKEN\r"; exp_continue}
      "Email: (this IS public) " {send "$QUALITI_GITHUB_EMAIL\r"; exp_continue}
  }
EOD