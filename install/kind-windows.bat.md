# 1. install kubectl

```
curl -Lo kubernetes-client-windows-amd64.tar.gz https://storage.googleapis.com/kubernetes-release/release/v1.21.2/kubernetes-client-windows-amd64.tar.gz
tar -xzvf kubernetes-client-windows-amd64.tar.gz
move kubernetes\client\bin\kubectl.exe .\kubectl.
```
# 2. install kind binary

```
curl.exe -Lo kind.exe https://kind.sigs.k8s.io/dl/v0.12.0/kind-windows-amd64
```

# 3. create kind cluster with static config file

```
kind.exe create cluster --config kind-config.yaml
```

# 4. create ingress controller

```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
```
