#!/bin/bash

#########################
# About: Script to list users with read access to a GitHub repository
# Input: Repository owner and repository name
# Owner: Your Name
#########################

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token, expected to be set as environment variables
USERNAME=$username
TOKEN=$token

# User and Repository information from command-line arguments
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Helper function to check if the correct number of arguments is provided
function helper {
    local expected_cmd_args=2
    if [ $# -ne $expected_cmd_args ]; then
        echo "Please execute the script with the required command arguments: <REPO_OWNER> <REPO_NAME>"
        exit 1
    fi
}

# Main script execution

# Check for correct number of arguments
helper $@

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access

