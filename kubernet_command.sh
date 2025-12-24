
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

#### info :- SPACE at end and (.) for current directory need to add otherwise provide the file directory instead
docker build -t springboot-kubernet-demo:1.0 .

docker images
kubectl create deployment springboot-kubernet-demo --image=springboot-kubernet-demo:1.0 --port=8080

### in case of failing in deployment
- kubectl delete deployment springboot-kubernet-demo
- kubectl get deployment springboot-kubernet-demo

minikube image load springboot-kubernet-demo:1.0

kubectl get deployment springboot-kubernet-demo

kubectl expose deployment springboot-kubernet-demo --type=NodePort

kubectl get service

minikube service springboot-kubernet-demo --url
- (to verify this use "/message" at end of URL i.e.  http://127.0.0.1:64139/message)

### To render the dashboard of kubernet in local to watch running services
minikube dashboard


kubectl get pods

minikube tunnel
minikube stop

kubectl get pods