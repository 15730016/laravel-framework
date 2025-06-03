#!/bin/bash

# 1. Initialize a new Git repository in the current Laravel project directory
git init

# 2. Add all files to the staging area
git add .

# 3. Commit the added files with a message
git commit -m "Initial commit"

# 4. Add remote origin (replace the URL with your actual repository URL)
git remote add origin git@github.com:username/repo.git

# 5. Push to the main branch (or master if your default branch is master)
# Check if main branch exists locally, else use master
if git show-ref --verify --quiet refs/heads/main; then
    git push -u origin main
else
    git push -u origin master
fi

echo "Git repository initialized and pushed to remote."

echo ""
echo "To update your code later:"
echo "1. Make your changes."
echo "2. Stage the changes: git add ."
echo "3. Commit the changes: git commit -m \"Your commit message\""
echo "4. Push to remote: git push"
echo ""
echo "If remote origin already exists and you want to update the URL:"
echo "git remote set-url origin git@github.com:username/repo.git"
