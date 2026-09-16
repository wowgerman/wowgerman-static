#!/usr/bin/env bash
set -euo pipefail

for zip_file in *.zip; do
    [ -e "$zip_file" ] || continue
    name="${zip_file%.zip}"
    mkdir -p "$name"
    unzip -o "$zip_file" -d "$name"
done
