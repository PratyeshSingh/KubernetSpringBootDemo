
CommandLine
-----------
https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Farm64%2Fstable%2Fhomebrew


minikube start

### If which minikube fails after installation via brew, you may have to remove the old minikube links and link the newly installed binary:
brew unlink minikube
brew link minikube

### if it is failing with some error then try with below command
- minikube stop
- minikube delete --all --purge

### if still fails then
- brew uninstall minikube
- brew install minikube


minikube status
kubectl cluster-info
kubectl get node
minikube docker-env

# to show running services
kubectl get po -A

minikube kubectl -- get po -A

# to execute the command
alias kubectl="minikube kubectl --"

minikube dashboard
minikube stop

# To show all deployed services in kubernet
minikube service list

# Here to START configuration for build

#### info :- SPACE at end and (.) for current directory need to add otherwise provide the file directory instead
#docker build -t pratyesh3/springboot-kubernet-demo:1.0 .
docker build -t pratyesh3/springboot-kubernet-demo:latest .


#docker push  pratyesh3/springboot-kubernet-demo:1.0
docker push  pratyesh3/springboot-kubernet-demo:latest

docker images

# if yml/yaml file configuration are available else use ( kubectl create ) command below
#kubectl apply -f your_file_name.yml
kubectl apply -f ./src/main/resources/application-service.yaml -f ./src/main/resources/application-deployment.yaml
# to verify above setup
kubectl get deployment
kubectl get services

# in case of failing in deployment
kubectl delete deployment springboot-kubernet-demo-deployment

# in case remove service from kubectl or minikube
kubectl delete service springboot-kubernet-demo-service

kubectl get deployment springboot-kubernet-demo-deployment

kubectl expose deployment springboot-kubernet-demo --type=NodePort

# To load in minikube kubernet environment
#minikube image load pratyesh3/springboot-kubernet-demo:1.0
minikube image load pratyesh3/springboot-kubernet-demo:latest

kubectl get service

minikube service springboot-kubernet-demo --url
- (to verify this use "/message" at end of URL i.e.  http://127.0.0.1:64139/message)

### To render the dashboard of kubernet in local to watch running services
minikube dashboard


kubectl get pods

minikube tunnel
minikube stop

kubectl get pods