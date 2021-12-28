#!/bin/bash
set -ex

echo "Setting up Git User..."

git config --global user.email "${GITHUB_USERNAME}@users.noreply.github.com"
git config --global user.name "${GITHUB_USERNAME}"

git remote set-url origin https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com/${REPO}.git
echo "Git User is setup!"
