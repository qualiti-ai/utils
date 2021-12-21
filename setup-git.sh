#!/bin/bash
set -ex

echo "Setting up Git User..."

git config --global user.email "github-bot@bot.com"
git config --global user.name "Github Bot"
git remote rm origin
git remote add origin 'git@github.com:github-bot/${REPO_NAME}.git'
echo "Git User is setup!"
