# Dashboard Kubernetes RPI Deployment Descriptor

## Overview

In order to deploy the Dashboard you have to curl the deployment descriport, edit
the services to go from ClusterIP to NodePort...


## WIP

- Used to have to add a kubernetes admin account, but it does not seem to be
the case anymore.
- Still working on gettings the helm chart to do it (chech the kubedge2/kubernetes-dashboard-arm32v7 helm chart)

## Usage

```bash
kubectl apply -f kubernetes-dashboard-arm.yaml
```
