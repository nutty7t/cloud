#!/usr/bin/env sh

helm reset
kubectl delete deployment tiller-deploy --namespace=nutty-system
kubectl delete service tiller-deploy --namespace=nutty-system
kubectl delete serviceaccount tiller --namespace=nutty-system
kubectl delete clusterrolebinding tiller-admin

