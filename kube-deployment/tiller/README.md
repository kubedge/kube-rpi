# Tiller Kubernetes RPI Deployment Descriptor

## Overview

`helm init` does not work right on RPI because the pulled image is matching AMD64.

## Usage

```bash
kubectl apply -f tiller-serviceaccount.yaml
kubectl apply -f tiller.yaml
```

