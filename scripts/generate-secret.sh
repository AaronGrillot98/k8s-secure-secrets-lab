#!/usr/bin/env bash
set -euo pipefail

NAMESPACE=secure-lab
SECRET_NAME=demo-secret

kubectl -n "${NAMESPACE}" create secret generic "${SECRET_NAME}" \
  --from-literal=username=admin \
  --from-literal=password=changeme123 \
  --dry-run=client -o yaml
