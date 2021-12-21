#!/bin/bash
set -ex

echo "Setting up Git User..."

git config --global user.email "${GH_USERNAME}@users.noreply.github.com"
git config --global user.name "${GH_USERNAME}"

git remote set-url origin https://dhair:${GITHUB_TOKEN}@github.com/${REPO}.git
echo "Git User is setup!"
