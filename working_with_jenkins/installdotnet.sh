#!/bin/bash

# Update and install required packages
apt-get update && apt-get install -y --no-install-recommends \
    wget curl libunwind8 gettext apt-transport-https && \
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Download the .NET install script
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

# Run the .NET install script for ARM64 and .NET 6.0
bash dotnet-install.sh --channel 6.0 --arch arm64

# Add dotnet to the PATH for the current session
export PATH=$PATH:$HOME/dotnet

# Print the PATH to verify it's set correctly
echo $PATH

# Verify the installation
dotnet --version