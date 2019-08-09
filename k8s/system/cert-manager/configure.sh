#/usr/bin/env bash

KEY=spec.acme.solvers.0.dns01.digitalocean.tokenSecretRef.key
yq w staging-issuer.yaml ${KEY} ${1}
yq w production-issuer.yaml ${KEY} ${1}
