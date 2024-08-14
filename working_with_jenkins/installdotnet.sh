#!/bin/bash

# Update Homebrew and install necessary dependencies
brew update

# Install required packages
brew install curl gettext

# Download the .NET install script
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

# Make the script executable
chmod +x dotnet-install.sh

# Run the install script for the latest .NET SDK version, targeting ARM64
./dotnet-install.sh --install-dir $HOME/dotnet --arch arm64

# Add .NET to the PATH environment variable
export PATH=$PATH:$HOME/dotnet

# Verify the installation
dotnet --version