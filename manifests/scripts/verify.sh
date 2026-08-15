#!/bin/sh
set -eu

apk add --no-cache curl >/dev/null

URL="http://speedtest-exporter.monitoring.svc:9798/metrics"
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$STATUS" != "200" ]; then
  echo "FAIL: expected status 200 from $URL, got $STATUS"
  exit 1
fi

echo "PASS: $URL returned 200"
