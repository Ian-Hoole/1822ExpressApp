#!/bin/bash

# Get the PID of the process
PID=$(pgrep -l -f "node index.js" | cut -d ' ' -f 1)

# Check if the process is running
if [ -n "$PID" ]; then
    echo "Process $PROCESS_NAME (PID $PID) is running. Attempting to kill..."
    kill -9 "$PID"
    echo "Process $PROCESS_NAME has been killed."
else
    echo "Process $PROCESS_NAME is not running."
fi