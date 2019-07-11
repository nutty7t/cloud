#!/usr/bin/env sh

helm install                        \
	--name nginx-ingress            \
	--namespace nutty-system        \
	--tiller-namespace nutty-system \
	stable/nginx-ingress

