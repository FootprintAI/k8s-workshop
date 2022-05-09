# install kubectl for windows
curl -Lo kubernetes-client-windows-amd64.tar.gz https://storage.googleapis.com/kubernetes-release/release/v1.21.2/kubernetes-client-windows-amd64.tar.gz
tar -xzvf kubernetes-client-windows-amd64.tar.gz
move kubernetes\client\bin\kubectl.exe .\kubectl.

# install k3d for windows
curl.exe -Lo k3d.exe https://github.com/k3d-io/k3d/releases/download/v5.4.1/k3d-windows-amd64.exe

# create k3d cluster
k3d cluster create demo1 -p "8888:80@loadbalancer"

