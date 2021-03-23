## k8s-workshop 

#### Purpose
In this example, we use k3d (a containerized version of k3s) for demostrate how kubernetes can do.

#### Presentation

#### Installation

```
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
```

#### Create cluster


```
k3d cluster create demo1 -p "8888:80@loadbalancer"
// this way, we are expost loadbalancer inside k3d into localhost:8888
```

#### Create Namespace

```
kubectl apply -f namespace.yaml
```

#### Access services

```
// curl v1 api
curl http://localhost:8888/v1 


// curl v2 api
curl http://localhost:8888/v2
```
