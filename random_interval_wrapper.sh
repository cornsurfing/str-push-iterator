#!/bin/bash

# Calculate a random delay between 7200 (2 hours) and 14400 seconds (4 hours)
DELAY=$((RANDOM % 7200 + 7200))

# Sleep for the random delay
sleep $DELAY

# Run the main script
./commit_random_string.sh
