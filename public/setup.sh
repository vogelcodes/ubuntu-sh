#!/bin/bash

# Update Ubuntu
sudo apt update
sudo apt upgrade -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc

# Install Docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Install BUN (Bash Uploader for Newbies) - Assuming it's a script or tool you want to install
# Replace the following line with the actual installation command for BUN
# For example, if BUN is a GitHub repository, you can use git clone or wget/curl to download it.
# Example: git clone https://github.com/username/BUN.git
# or: wget https://example.com/BUN.sh
# or: curl -O https://example.com/BUN.sh
# Execute any additional setup or installation commands for BUN as needed.

# Install Python
sudo apt install python3 -y

echo "Setup completed. You may need to restart your shell to apply changes."
