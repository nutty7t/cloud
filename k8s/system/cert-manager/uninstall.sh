#!/usr/bin/env sh

# uninstall the issuer helm release
helm uninstall \
	--namespace nutty-system \
	letsencrypt-issuer

# uninstall the cert-manager helm release
helm uninstall \
	--namespace nutty-system \
	cert-manager

# delete the custom resource definitions
kubectl delete --filename=https://raw.githubusercontent.com/jetstack/cert-manager/v0.13.1/deploy/manifests/00-crds.yaml
