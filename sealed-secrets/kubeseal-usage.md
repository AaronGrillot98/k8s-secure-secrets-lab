# Using kubeseal

1. Create a normal Kubernetes Secret manifest.
2. Use kubeseal to encrypt it against the controller’s public certificate.
3. Save only the SealedSecret manifest to Git.
4. Apply the sealed manifest to the cluster.

The sealed secret can be decrypted only by the controller running inside the cluster.
