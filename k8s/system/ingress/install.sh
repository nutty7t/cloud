#!/usr/bin/env bash

helm repo add nginx https://helm.nginx.com/stable
helm repo update

helm install \
	--namespace nutty-system \
	nginx-ingress \
	nginx/nginx-ingress
