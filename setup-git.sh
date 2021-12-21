#!/bin/bash
set -ex

echo "Setting up Git User..."

git config --global user.email "github-bot@bot.com"
git config --global user.name "Github Bot"
git remote set-url origin 'https://${GITHUB_TOKEN}:x-oauth-basic@github.com/${REPO}.git'
echo "Git User is setup!"
