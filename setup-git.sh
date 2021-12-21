#!/bin/bash
set -ex

echo "Setting up Git User..."

git config --global user.email "github-bot@bot.com"
git config --global user.name "Github Bot"
git config --global user.username "github-bot"
echo "Git User is setup!"
