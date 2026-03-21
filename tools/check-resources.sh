#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
theme_dir="$repo_root/Nullfjord"
style_file="$theme_dir/style.css"

missing=0

while IFS= read -r asset; do
  if [[ ! -f "$theme_dir/$asset" ]]; then
    echo "Missing resource: $asset"
    missing=1
  fi
done < <(grep -o 'resources:[^")]*' "$style_file" | sed 's/resources://' | sort -u)

exit "$missing"
