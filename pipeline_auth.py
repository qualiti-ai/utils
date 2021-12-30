#!/usr/bin/python3
"""Check users against the current operations bucket. Return if user found."""

import os
import requests


def main():
    """Send request for list of ops members, validate membership, exits."""
    actor = os.getenv('GITHUB_ACTOR')
    username = os.getenv('GITHUB_USERNAME')
    users = []
    token = os.getenv('GITHUB_TOKEN')
    headers = {"Accept": "application/vnd.github.v3+json"}
    url = 'https://api.github.com/orgs/qualiti-ai/teams/operations/members'
    response = requests.get(url, auth=(username, token), headers=headers)
    for user in response.json():
        users.append(user['login'])
    if actor in users:
        print('User found in correct group. Continuing.')
        return
    else:
        print('User not found: raising error.')
        raise RuntimeError("USER NOT PERMITTED: CHECK GROUP PERMISSIONS.")
        exit(1)


if __name__ == '__main__':
    main()
