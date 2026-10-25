#!/bin/bash
set -euo pipefail

cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

if ! command -v typst >/dev/null 2>&1; then
  echo "Typst is required to build the cookbook. Install it from https://typst.app/open-source/" >&2
  exit 1
fi

typst compile --root . cookbook.typ cookbook.pdf
