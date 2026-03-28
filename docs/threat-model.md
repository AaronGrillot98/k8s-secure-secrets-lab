# Threat Model

## Risks
- Committing plaintext secrets to Git.
- Leaking credentials through shared repos.
- Overly broad secret access in the cluster.

## Controls
- Use Sealed Secrets for encrypted storage.
- Restrict access with RBAC.
- Keep the controller private key inside the cluster.
- Separate workloads with namespaces.
