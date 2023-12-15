#!/bin/bash

#####################################
# Author: Karthikeyan
# Date: 14-Dec-2023

# Version: v1
# Script to retrieve the list of Repositories in github

###################################################

#GitHub API URL
GITHIB_API_URL="https://api.github.com"

#GitHib Login Details
USERNAME=$username
TOKEN=$token
ORGNAME=$org_name

#command to find the list of repositories in my Account
echo "List of Repositories in My GitHub Account"
echo "#########################################"

acc_url="$GITHIB_API_URL/users/$USERNAME/repos"
curl -s -u $gitusername:$gittoken $acc_url | jq -r '.[] | .name'

#Command to find the list of repositoris in My Organisation
echo "List of Repositories in My Organisation"
echo "#######################################"

org_url="$GITHIB_API_URL/orgs/$ORGNAME/repos"
curl -s -u $gitusername:$gittoken $org_url |jq -r '.[] | .name'

