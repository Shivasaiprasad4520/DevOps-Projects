import requests
from requests.auth import HTTPBasicAuth
import sys

def helper():
    expected_cmd_args = 2
    if len(sys.argv) - 1 != expected_cmd_args:
        print("Please execute the script with the required command arguments.")
        sys.exit(1)

def github_api_get(endpoint, username, token):
    url = f"https://api.github.com/{endpoint}"
    response = requests.get(url, auth=HTTPBasicAuth(username, token))
    
    if response.status_code != 200:
        print(f"Failed to retrieve data from GitHub API. Status code: {response.status_code}")
        sys.exit(1)
        
    return response.json()

def list_users_with_read_access(repo_owner, repo_name, username, token):
    endpoint = f"repos/{repo_owner}/{repo_name}/collaborators"
    collaborators = github_api_get(endpoint, username, token)
    
    users_with_read_access = [user['login'] for user in collaborators if user['permissions']['pull']]
    
    if not users_with_read_access:
        print(f"No users with read access found for {repo_owner}/{repo_name}.")
    else:
        print(f"Users with read access to {repo_owner}/{repo_name}:")
        for user in users_with_read_access:
            print(user)

if __name__ == "__main__":
    helper()

    # GitHub username and personal access token
    username = input("Enter your GitHub username: ")
    token = input("Enter your GitHub personal access token: ")

    # User and Repository information
    repo_owner = sys.argv[1]
    repo_name = sys.argv[2]

    print(f"Listing users with read access to {repo_owner}/{repo_name}...")
    list_users_with_read_access(repo_owner, repo_name, username, token)
