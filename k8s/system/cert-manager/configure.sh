#/usr/bin/env bash

# We might not need this.
# We can use the b64enc template function in Helm.
# Yeah, let's do that instead.
# We're going to refactor these manifest files into a Helm chart.
# access-token can be a property in the values.yaml file.

DIR=$(dirname "$0")
KEY=data.access-token
TOKEN=$(yq r ${DIR}/solver-secret.yaml ${KEY} | base64 -w 0)
yq w -i ${DIR}/solver-secret.yaml ${KEY} ${TOKEN}
