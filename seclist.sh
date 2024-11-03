#!/bin/bash

# Script to install SecLists version 2024.3 on Parrot OS

# Step 1: Update the system packages
echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

# Step 2: Download SecLists 2024.3
SECLISTS_VERSION="2024.3"
DOWNLOAD_URL="https://github.com/danielmiessler/SecLists/archive/refs/tags/${SECLISTS_VERSION}.tar.gz"
TARGET_DIR="/usr/share/wordlists/SecLists"

echo "Downloading SecLists version ${SECLISTS_VERSION}..."
wget $DOWNLOAD_URL -O SecLists-${SECLISTS_VERSION}.tar.gz

# Step 3: Extract the downloaded archive
echo "Extracting SecLists..."
tar -xzf SecLists-${SECLISTS_VERSION}.tar.gz

# Step 4: Move SecLists to the desired directory
echo "Moving SecLists to ${TARGET_DIR}..."
sudo mv SecLists-${SECLISTS_VERSION} $TARGET_DIR

# Step 5: Clean up by removing the downloaded archive
echo "Cleaning up temporary files..."
rm SecLists-${SECLISTS_VERSION}.tar.gz

# Step 6: Verify installation
echo "Verifying installation..."
if [ -d "$TARGET_DIR" ]; then
    echo "SecLists ${SECLISTS_VERSION} installed successfully at ${TARGET_DIR}."
else
    echo "Installation failed. Please check for errors."
fi
