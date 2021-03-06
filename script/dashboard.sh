#!/bin/sh
#  Script to run kuberneters dashboard

echo  "Applying recommended dashboard configurations..."
kubectl apply -f ../../svetlana/kubernetes/dashboard/recommended.yaml

echo  "Token: "
kubectl -n kube-system describe secret default

# chmod +x ~/dashboard/dashboard.sh
# sudo ln -s ~/dashboard/dashboard.sh /usr/local/bin/dashboard
# dashboard start|status|stop

echo "Starting the dashboard..."
echo "Dashboard is accessible at: "
echo "http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/"
kubectl proxy
