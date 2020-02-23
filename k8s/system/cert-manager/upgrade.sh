#!/usr/bin/env sh

helm upgrade                 \
	--namespace nutty-system \
	letsencrypt-issuer       \
	./issuers/digitalocean
