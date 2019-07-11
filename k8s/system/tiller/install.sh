#!/usr/bin/env sh

kubectl create serviceaccount tiller --namespace=nutty-system
kubectl create clusterrolebinding tiller-admin --serviceaccount=nutty-system:tiller --clusterrole=cluster-admin
helm init --service-account=tiller --tiller-namespace=nutty-system

