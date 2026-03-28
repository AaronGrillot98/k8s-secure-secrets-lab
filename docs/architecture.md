# Architecture

This lab uses a single namespace, a demo workload, and a Sealed Secrets controller. The app reads credentials from a secret, but the encrypted secret resource is what gets committed to Git. The controller decrypts it in-cluster and creates the real Kubernetes Secret automatically.
