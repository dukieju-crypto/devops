#!/usr/bin/env bash
set -euo pipefail

SRC="${1:-test}"
STAMP=$(date +%Y%m%d-%H%M%S)
OUT="backups/${SRC}-${STAMP}.tar.gz"

mkdir -p backups
tar -czf "$OUT" "$SRC"

echo "백업 완료: $OUT"
