#!/usr/bin/env bash
set -euo pipefail

kubectl delete -f manifests/app-service.yaml --ignore-not-found
kubectl delete -f manifests/app-deployment.yaml --ignore-not-found
kubectl delete -f manifests/rbac.yaml --ignore-not-found
kubectl delete -f manifests/namespace.yaml --ignore-not-found
