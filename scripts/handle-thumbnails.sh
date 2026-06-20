#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets"

for IMG in "$SRC"/*.avif; do
	[ -e "$IMG" ] || continue
	BNM="$(basename "${IMG%.*}")"
	[ -e "$OUT/thumbnail-${BNM}.avif" ] && continue
	ffmpeg -i "$IMG" -vf scale=iw/4:ih/4 -frames:v 1 "$OUT/thumbnail-${BNM}.avif"
done