# Legned k8

Legend k8 installer.

## Local Development

You can setup and execute the legend k8 configs locally on linux or macos.

### Prerequisite

Before running locally you need to have `minikube`, `helm`, and `kubectl` installed. There are helper scripts (for linux) that will do this for you.

```bash
# Install all
chmod +x scripts/local-setup.sh
./scripts/local-setup.sh

# individual minikube install
chmod +x scripts/install-minikube.sh
./scripts/install-minikube.sh

# individual hel install
chomd +x scripts/install-helm.sh
./scripts/install-helm.sh
```

### Running a Chart

You can deploy the helm charts to minikube by doing the following.

```bash
# Start and Verify
minikube start

# MongoDb
cd helm-charts/mongodb
helm install mongodb ./
kubectl get pods

# Stop
helm uninstall mongodb
minikube stop
```