#!/bin/bash

install_helm() {
    echo "Installing Helm..."
    ./scripts/install-helm.sh
    echo "Helm installation completed."
}

install_minikube() {
    echo "Installing Minikube..."
    ./scripts/install-minikube.sh 
    echo "Minikube installation completed."
}

install_kubectl() {
    echo "Installing Kubectl..."
    ./scripts/install-kubectl.sh
    echo "Kubectl installation completed."
}

echo "Starting installation of Helm and Minikube..."

install_helm
install_minikube
install_kubectl

echo "Helm and Minikube installation completed."
