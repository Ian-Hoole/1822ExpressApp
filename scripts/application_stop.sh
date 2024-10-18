#!/bin/bash

# Get the PID of the process
PID=$(pgrep -l -f "node index.js" | cut -d ' ' -f 1)

# Check if the process is running
if [ -n "$PID" ]; then
# This kills the process
    kill -9 "$PID"
fi