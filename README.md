# IAM Thesis

## Postgres DB

### Creating PV and PVC for Postgres Data
**PV**: Persistent volume (PV) is a piece of storage that can be used by a Pod to store data and exists beyond the lifecycle of a Pod.
It allows data to persist even if the Pod is destroyed. This enables the data to be preserved and reused by other Pods.

**PVC**: A persistent volume claim (PVC) is a request for a PV that matches certain criteria, such as size, access mode, and storage class.

### Deploying Postgres as a Stateful Set
Deploy Postgres as a stateful set with a headless service.
A stateful set is a Kubernetes resource that manages the deployment and scaling of a set of Pods that have persistent identities and storage.
