#!/bin/bash

# Update Ubuntu
sudo apt update
sudo apt upgrade -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
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
sudo apt install python3 unzip -y

curl -fsSL https://bun.sh/install | bash

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

gh auth login

echo "Setup completed. You may need to restart your shell to apply changes."
