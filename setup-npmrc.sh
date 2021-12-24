#!/bin/bash

set -ex

if [ -z "$GITHUB_TOKEN" ]; then
  echo ""
  echo "ERROR: No GITHUB_TOKEN defined in environment variables. Be sure to set your username in Gitpod or in your environment variables before continuing."
  exit 1
fi

echo "Logging into NPM for Github..."
npm set @qualiti-ai:registry "https://npm.pkg.github.com"
npm set registry "https://registry.npmjs.org"
npm set //npm.pkg.github.com/:_authToken $GITHUB_TOKEN
echo "NPM Logged in!"
