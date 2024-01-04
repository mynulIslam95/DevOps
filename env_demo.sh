#!/bin/bash

# Display a user-defined environment variable
echo "My custom environment variable is: $MY_CUSTOM_VAR"

# Setting a new environment variable in the script
NEW_VAR="Hello from script"
export NEW_VAR

# Display the new variable
echo "The script-set environment variable is: $NEW_VAR"

# Check if a specific environment variable is set
if [ -z "$HOME" ]; then
    echo "The HOME environment variable is not set."
else
    echo "Your home directory is: $HOME"
fi


