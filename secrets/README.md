
Ref: https://github.com/evry-bergen/kubernetes-workshop/tree/master/labs/3-config

#### create secrets

```
kubectl create secret generic tls-certs --from-file=tls/ -n demo1
```

#### create configmap

```
kubectl create configmap nginx-proxy-conf --from-file=nginx/proxy.conf -n demo1
```


#### test endpoint with port-forward

```
kubectl port-forward secure-monolith 10443:443 -n demo1
```

#### test ca with curl ####

```
curl --cacert tls/ca.crt https://127.0.0.1:10443
```
