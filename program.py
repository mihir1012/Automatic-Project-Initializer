#!/usr/bin/python

import sys
from github import Github

print("HELLO WORLD")
project_name = str( sys.argv[1] )
print( project_name + " From python")

username = "mihir1012"
#access_token is to be generated through github 
g = Github(username,access_token)

user = g.get_user()

repo = user.create_repo(project_name)