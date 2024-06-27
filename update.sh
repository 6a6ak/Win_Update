#!/bin/bash

# Check if winget is installed
if ! command -v winget &> /dev/null
then
    echo "winget could not be found, please install it first."
    exit
fi

# Update all installed packages using winget
echo "Updating all installed packages using winget..."
winget upgrade --all --accept-source-agreements --accept-package-agreements

echo "All packages have been updated."