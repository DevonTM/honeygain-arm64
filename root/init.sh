#!/bin/bash

if [ -z "$USER" ] || [ -z "$PASS" ]; then
    echo "Error: User or password is empty. Please set the \$USER and \$PASS variables."
    exit 1
fi

while true; do
    BOX64_LD_LIBRARY_PATH=/app box64 /app/honeygain -tou-accept -email "$USER" -pass "$PASS" -device "$HOSTNAME"
    echo "Box64: honeygain crashed... restarting in 30 seconds"
    sleep 30
done
