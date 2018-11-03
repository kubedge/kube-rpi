# Flannel Kubernetes RPI Deployment Descriptor

## Overview

As part of the kubeadm based deployement, you used to have to run 
some command such as `curl xxxx.flannel.yaml | sed -e "s/amd64/arm32v7/g" | kubectl apply -f -`

- Those kubernetes file are matching the 0.10.0 version of flannel.
- The supported architecture have been trimmed down to arm32v7
- flanneld parameters have been extended to indicate to flannel to use eth0 instead of wlan0

## Tip

- sometimes it is usefull to help flannel to restart by running `sudo ip link delete flannel.1`

## Usage

```bash
kubectl apply -f flannel.yaml
```
