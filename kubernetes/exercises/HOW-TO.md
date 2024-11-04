# HOW TO

## minikube

Start minikube

```
minikube start
```

Open the dashboard

```
minikube dashboard
```


## kind

Start a K8s cluster
```
kind create cluster
```

Delete the cluster
```
kind delete cluster
```


## MYAPP

Create deployment
```
kubectl create -f deployment
```

Create service
```
kubectl create -f service-nodeport.yaml
```

Access the service
```
minikube service myapp-service --url
```
