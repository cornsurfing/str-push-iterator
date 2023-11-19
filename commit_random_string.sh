#!/bin/bash

# Define the filename with the current date
FILENAME="$(date +%F).txt"

# Generate a random string
RANDOM_STRING=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)

# Append the random string to the file
echo "$RANDOM_STRING" >> "$FILENAME"

# Git operations
git add "$FILENAME"
git commit -m "Add random string on $(date +%F) at $(date +%H:%M:%S)"
git push
