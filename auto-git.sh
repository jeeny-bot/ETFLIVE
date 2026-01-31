#!/bin/bash

# This script is not recommended for professional use.
# It creates a noisy commit history.

while true; do
  # Check for changes, excluding untracked files initially
  if ! git diff-index --quiet HEAD --; then
    echo "Changes detected, committing and pushing..."
    git add .
    git commit -m "auto-commit: $(date +'%Y-%m-%d %H:%M:%S')"
    git push
  else
    echo "No changes to commit."
  fi
  sleep 30
done
