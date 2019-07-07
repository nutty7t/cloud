#/usr/bin/env sh

# Generate self-signed TLS certificate and private key.
openssl req        \
  -x509            \
  -nodes           \
  -days 1825       \
  -newkey rsa:2048 \
  -keyout key.pem  \
  -out cert.pem    \
  -subj "/CN=nginx-ingress"

# Merge TLS secret with manifest template.
cp tls-secret-template.yaml tls-secret.yaml
echo "data:" >> tls-secret.yaml
echo "  tls.crt: $(cat cert.pem | base64 | tr -d '\n')" >> tls-secret.yaml
echo "  tls.key: $(cat key.pem | base64 | tr -d '\n')" >> tls-secret.yaml

