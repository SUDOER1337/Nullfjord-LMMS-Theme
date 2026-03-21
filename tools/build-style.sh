#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
theme_dir="$repo_root/Nullfjord"
out_file="$theme_dir/style.css"

parts=(
  "$repo_root/src/styles/00-base.qss"
  "$repo_root/src/styles/10-controls.qss"
  "$repo_root/src/styles/20-workspace.qss"
  "$repo_root/src/styles/30-plugins.qss"
  "$repo_root/src/styles/40-palette.qss"
)

: > "$out_file"

for part in "${parts[@]}"; do
  if [[ ! -f "$part" ]]; then
    echo "Missing style fragment: $part" >&2
    exit 1
  fi

  cat "$part" >> "$out_file"
  printf '\n' >> "$out_file"
done
