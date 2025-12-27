# Execute these below command from with ProductService folder/directory


docker build -t pratyesh3/product-provider:latest .


docker push  pratyesh3/product-provider:latest


kubectl apply -f ./src/main/resources/application-service.yaml -f ./src/main/resources/application-deployment.yaml


kubectl get deployment product-provider-deployment


kubectl expose deployment product-provider-deployment --type=NodePort


minikube service list

docker images

minikube image load pratyesh3/product-provider:latest

minikube service product-provider-service --url

docker images

minikube image load pratyesh3/demo-app:latest

minikube service demo-app-service --url