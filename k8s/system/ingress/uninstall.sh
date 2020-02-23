#!/usr/bin/env bash

helm uninstall \
	--namespace nutty-system \
	nginx-ingress
