# PV and PVC claim creation for Kubernetes and Kubedge

## Overview

This is WIP. The current directory is basically a dump of the yaml file
used on the different Kubedge clusters.

There is a piece of go code that has not been converted yet to ARM32v7 that
helps managing the PV and PVC automatically. Since the piece of code has not
been converted, a lot of the yaml file are "hardcoded" in order to help the creation of the PV
and claims.

Also cluster1, cluster2 and cluster3 do not have the same partitioning of the SD cards


## Usage

```bash
kubectl apply -f admin_account.yaml
kubectl apply -f local-storageclass.yaml
```

## Cluster 1 usage

To add the volumes to Kubernetes

```bash
kubectl apply -f kubemaster-pi-volumes.yaml
kubectl apply -f kube-node01-volumes.yaml
kubectl apply -f kube-node02-volumes.yaml
kubectl apply -f kube-node03-volumes.yaml
kubectl apply -f kube-node04-volumes.yaml
```

To create the claims manually to Kubernetes
```bash
kubectl apply -f kubemaster-pi-claims.yaml
kubectl apply -f kube-node01-claims.yaml
kubectl apply -f kube-node02-claims.yaml
kubectl apply -f kube-node03-claims.yaml
kubectl apply -f kube-node04-claims.yaml
```

To test the claim binding to a POD
```bash
kubectl apply -f kubemaster-pi-pv-pod.yaml
kubectl apply -f kube-node01-pv-pod.yaml
kubectl apply -f kube-node02-pv-pod.yaml
kubectl apply -f kube-node03-pv-pod.yaml
kubectl apply -f kube-node04-pv-pod.yaml
```

## Cluster 2 Usage

To add the volumes to Kubernetes
```bash
kubectl apply -f master-pi-volumes.yaml
kubectl apply -f home-pi-volumes.yaml
kubectl apply -f nas-pi-volumes.yaml
```

To create the claims manually in Kubernetes
```bash
kubectl apply -f master-pi-claims.yaml
kubectl apply -f home-pi-claims.yaml
kubectl apply -f nas-pi-claims.yaml
```

```bash
kubectl apply -f test-claim.yaml
```

To test the claim binding to a POD
```bash
kubectl apply -f master-pi-pv-pod.yaml
kubectl apply -f home-pi-pv-pod.yaml
kubectl apply -f nas-pi-pv-pod.yaml
```

## Cluster 3 usage

To add the volumes to Kubernetes
```bash
kubectl apply -f kubemaster-pi-volumes-krishna.yaml
kubectl apply -f kube-node01-volumes-krishna.yaml
kubectl apply -f kube-node02-volumes-krishna.yaml
```

To create the claims manually in Kubernetes
```bash
kubectl apply -f test-claim-krishna.yaml
```

To test the claim binding to a POD
```bash
kubectl apply -f home-pi-pv-pod-krishna.yaml
```


