#!/bin/bash

# Change this to your GitHub email ID
GIT_EMAIL="ajeettiwari.ajju21may@gmail.com"
GIT_NAME="Ajeet Tiwari"
REPO_DIR="/c/Users/ajeet\ tiwari/Desktop/github-green-hack"

# Set git config
git config user.email "$GIT_EMAIL"
git config user.name "$GIT_NAME"

# Set the start date
start_date="2024-01-01"
end_date="2024-02-01"

current_date="$start_date"

while [[ "$current_date" < "$end_date" ]]; do
    for i in {1..3}; do  # 3 commits per day
        echo "$current_date $i" >> "$REPO_DIR/file.txt"
        git add .
        GIT_AUTHOR_DATE="$current_date 12:00:00" \
        GIT_COMMITTER_DATE="$current_date 12:00:00" \
        git commit -m "Commit $i on $current_date"
    done
    current_date=$(date -I -d "$current_date + 1 day")
done
