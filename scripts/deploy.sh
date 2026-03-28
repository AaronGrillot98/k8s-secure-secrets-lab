#!/usr/bin/env bash
set -euo pipefail

kubectl apply -f manifests/namespace.yaml
kubectl apply -f manifests/rbac.yaml
kubectl apply -f manifests/app-deployment.yaml
kubectl apply -f manifests/app-service.yaml
