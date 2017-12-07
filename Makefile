installs:
	gcloud components install kubectl

setup_project:
	gcloud config set project YOUR_GCP_PROJET_ID
	gcloud config set compute/zone us-east1-b
	gcloud config get-value project

get_project:
	gcloud config get-value project

k8s_cluster:
	gcloud container clusters create wordpress-k8scluster

volumes:
	kubectl create -f local-volumes.yaml
	kubectl get pv

mysql_password:
	kubectl create secret generic mysql-pass --from-literal=password=YOUR_PASSWORD
	kubectl get secretr

mysql:
	kubectl create -f mysql-deployment.yaml
	kubectl get pods

wordpress:
	kubectl create -f wordpress-deployment.yaml
	kubectl get services wordpress

delete_all:
	kubectl delete secret mysql-pass
	kubectl delete deployment -l app=wordpress
	kubectl delete service -l app=wordpress
	kubectl delete pvc -l app=wordpress
	ktesttesoubectl delete pv local-pv-1 local-pv-2
