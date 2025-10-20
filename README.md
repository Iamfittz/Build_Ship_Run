## Docker Hub
Pull the latest image:
```
docker pull iamfitz/app:v1.0.2
```
https://hub.docker.com/r/iamfitz/app

## Build & Run Docker image
```
docker build -t iamfitz/app:v1.0.2 .
docker run -p 8080:8080 iamfitz/app:v1.0.2
```
Then open http://localhost:8080

## Deploy to Kubernetes
```
kubectl apply -f deployment.yaml
kubectl get pods
kubectl get svc
```
