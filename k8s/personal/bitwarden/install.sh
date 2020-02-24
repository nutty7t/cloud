#!/usr/bin/env sh

helm install \
	--namespace personal \
	bitwarden \
	./chart
