#!/usr/bin/env sh

# Official Documentation:
# https://cert-manager.io/docs/installation/kubernetes/

# cert-manager requires this annotation
kubectl label namespace nutty-system certmanager.k8s.io/disable-validation="true"

# install the custom resource definitions
kubectl apply        \
	--validate=false \
	--filename=https://raw.githubusercontent.com/jetstack/cert-manager/v0.13.1/deploy/manifests/00-crds.yaml

# add the helm repository
helm repo add jetstack https://charts.jetstack.io
helm repo update

# install cert-manager helm chart
helm install                 \
	--namespace nutty-system \
	--version v0.13.1        \
	cert-manager             \
	jetstack/cert-manager

# install issuer helm chart
helm install                 \
	--namespace nutty-system \
	letsencrypt-issuer       \
	./issuers/digitalocean
