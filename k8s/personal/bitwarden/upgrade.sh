#!/usr/bin/env sh

helm upgrade \
	--namespace bitwarden \
	bitwarden \
	./chart
