#/usr/bin/env bash

DIR=$(dirname "$0")
KEY=data.access-token
yq w -i ${DIR}/solver-secret.yaml ${KEY} ${1}
