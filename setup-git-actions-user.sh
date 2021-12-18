#!/bin/bash
set -ex

git config --global user.email "github-actions@bot.com"
git config --global user.name "azurebot"
git config http.qualiti.extraheader "AUTHORIZATION: bearer ${ACCESS_TOKEN}"

git config --local user.email "41898282+github-actions[bot]@users.noreply.github.com"
git config --local user.name "github-actions[bot]"