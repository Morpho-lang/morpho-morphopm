#!/usr/bin/env bash
# Run morphopm and fail if Morpho reports a runtime error.
# morpho6 currently always exits 0 even when errors are thrown.
set -euo pipefail

log=$(mktemp)
trap 'rm -f "$log"' EXIT

./morphopm "$@" 2>&1 | tee "$log"

if grep -E "^Error '" "$log" >/dev/null; then
  echo "morphopm failed with a Morpho error" >&2
  exit 1
fi
