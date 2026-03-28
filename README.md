# k8s-secure-secrets-lab
A hands-on Kubernetes cybersecurity project that demonstrates how to:  deploy a sample app,  manage secrets securely,  convert plain Kubernetes Secrets into SealedSecrets,  and keep sensitive data out of Git history.

# Kubernetes Secure Secrets Lab

A hands-on cybersecurity project for learning secure secret management in Kubernetes using Bitnami Sealed Secrets.

## Why this project exists

Plain Kubernetes Secrets are not safe to commit to Git. Sealed Secrets lets you encrypt secret data so only the cluster controller can decrypt it when applied to the cluster. This supports a safer GitOps-style workflow.

## What you will learn

- How Kubernetes Secrets work.
- Why base64 is not encryption.
- How to install the Sealed Secrets controller.
- How to encrypt secrets with kubeseal.
- How to deploy a secure demo app that consumes secrets.

## Prerequisites

- Kubernetes cluster: kind, minikube, or a cloud cluster.
- kubectl installed.
- kubeseal installed.
- Helm optional, if you want to install the controller that way.

## Architecture

The app runs in its own namespace and reads credentials from a Kubernetes Secret created from a SealedSecret resource. The Sealed Secrets controller holds the private key inside the cluster and decrypts the sealed object at runtime.

## Quick start

### 1. Create the namespace
```bash
kubectl apply -f manifests/namespace.yaml
```

### 2. Install the Sealed Secrets controller
Follow the instructions in `sealed-secrets/install-controller.md`.

### 3. Deploy the app
```bash
kubectl apply -f manifests/app-deployment.yaml
kubectl apply -f manifests/app-service.yaml
```

### 4. Create a secret and seal it
Follow the instructions in `scripts/generate-secret.sh` and `sealed-secrets/kubeseal-usage.md`.

### 5. Apply the sealed secret
```bash
kubectl apply -f manifests/sealedsecret.yaml
```

## Security lessons

- Never store plaintext secrets in Git.
- Use namespaces to separate workloads.
- Limit access with RBAC.
- Prefer encrypted secret workflows for GitOps.

## Cleanup
```bash
bash scripts/destroy.sh
```
