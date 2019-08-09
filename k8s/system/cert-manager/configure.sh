#/usr/bin/env bash

DIR=$(dirname "$0")
KEY=spec.acme.solvers.0.dns01.digitalocean.tokenSecretRef.key
yq w -i ${DIR}/staging-issuer.yaml ${KEY} ${1}
yq w -i ${DIR}/production-issuer.yaml ${KEY} ${1}
