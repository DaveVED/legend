#!/bin/bash

echo "Starting Minikube installation..."

# Download Minikube binary
echo "Downloading Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o /tmp/minikube

# Make Minikube binary executable
chmod +x /tmp/minikube

# Move Minikube binary to /usr/local/bin/
echo "Installing Minikube..."
sudo mv /tmp/minikube /usr/local/bin/

# Verify the installation by checking the Minikube version
if [[ $(minikube version) == *"minikube version"* ]]; then
    echo "Minikube installation completed."
else
    echo "Minikube installation may not have been successful. Please check the installation manually."
fi
