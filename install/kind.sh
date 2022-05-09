#!/usr/bin/env bash

# 1. install kubectl, skip this step if you already have kubectl installed
curl -LO https://dl.k8s.io/release/v1.21.2/bin/linux/amd64/kubectl
mv ./kubectl /usr/local/bin/kubectl

# 2. install kind binary
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64 && \
    chmod +x ./kind && \
    mv ./kind /usr/local/bin/kind

# 3. create kind cluster with static config file
kind create cluster --config kind-config.yaml
