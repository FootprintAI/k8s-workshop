#!/usr/bin/env bash

# 1. install kubectl, skip this step if you already have kubectl installed
curl -LO https://dl.k8s.io/release/v1.21.2/bin/linux/amd64/kubectl
mv ./kubectl /usr/local/bin/kubectl

# 2. install k3d binary
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash

# 3. create k3d cluster with expose ports on localhost
k3d cluster create demo1 -p "8888:80@loadbalancer"

