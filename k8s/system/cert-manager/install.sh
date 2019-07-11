#!/usr/bin/env sh

# Official Documentation:
# https://docs.cert-manager.io/en/latest/tutorials/acme/quick-start/#step-5-deploy-cert-manager

# cert-manager requires this annotation
kubectl label namespace nutty-system certmanager.k8s.io/disable-validation="true"

# install the custom resource definitions
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.8/deploy/manifests/00-crds.yaml

# add the helm repository
helm repo add jetstack https://charts.jetstack.io

# install helm chart
helm install                        \
	--name cert-manager             \
	--namespace nutty-system        \
	--tiller-namespace nutty-system \
	--version v0.8.1                \
	jetstack/cert-manager
