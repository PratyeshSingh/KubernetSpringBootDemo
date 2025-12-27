# Execute these below command from with DemoApp folder/directory


docker build -t pratyesh3/demo-app:latest .


docker push  pratyesh3/demo-app:latest


kubectl apply -f ./src/main/resources/application-service.yaml -f ./src/main/resources/application-deployment.yaml


kubectl get deployment demo-app-deployment


kubectl expose deployment demo-app-deployment --type=NodePort


minikube service list

docker images

minikube image load pratyesh3/demo-app:latest

minikube service demo-app-service --url