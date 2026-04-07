#!/usr/bin/env bash

set -euo pipefail

if [[ -z "${CF_AUTH_TOKEN:-}" ]]; then
  echo "CF_AUTH_TOKEN is required." >&2
  echo "Example: CF_AUTH_TOKEN=your_token ./scripts/cloudflare-request-trace.sh" >&2
  exit 1
fi

CF_ACCOUNT_ID="${CF_ACCOUNT_ID:-0e5320d474da5a5ee8afcc80e99288dd}"
TRACE_URL="${1:-qitai.ink}"
TRACE_METHOD="${2:-GET}"

curl \
  --silent \
  --show-error \
  --fail \
  --url "https://api.cloudflare.com/client/v4/accounts/${CF_ACCOUNT_ID}/request-tracer/trace" \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${CF_AUTH_TOKEN}" \
  --data "{\"url\":\"${TRACE_URL}\",\"method\":\"${TRACE_METHOD}\"}"
