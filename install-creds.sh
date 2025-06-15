#!/bin/bash

# Install Prometheus Operator CRDs from official GitHub repo
# Safe to run multiple times; skips if already applied

CRD_BASE_URL="https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/main/example/prometheus-operator-crd"

declare -a CRDS=(
  "monitoring.coreos.com_alertmanagers.yaml"
  "monitoring.coreos.com_podmonitors.yaml"
  "monitoring.coreos.com_prometheuses.yaml"
  "monitoring.coreos.com_prometheusrules.yaml"
  "monitoring.coreos.com_servicemonitors.yaml"
  "monitoring.coreos.com_thanosrulers.yaml"
)

echo "Applying Prometheus Operator CRDs..."

for crd in "${CRDS[@]}"; do
  echo "Applying $crd..."
  kubectl apply -f "$CRD_BASE_URL/$crd"
done

echo  "CRD installation complete."
