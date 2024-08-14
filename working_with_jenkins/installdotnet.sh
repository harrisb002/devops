#!/bin/bash

# Update package list and install dependencies
apt-get update && apt-get install -y --no-install-recommends \
    curl libunwind8 gettext apt-transport-https wget

# Download the .NET install script
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

# Make the script executable
chmod +x dotnet-install.sh

# Install the .NET SDK for ARM64 architecture
./dotnet-install.sh --channel 6.0 --install-dir /usr/share/dotnet --architecture arm64

# Update the PATH environment variable
export PATH=$PATH:/usr/share/dotnet

# Verify the installation by checking the .NET version
dotnet --version
