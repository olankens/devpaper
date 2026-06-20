#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
BIN="/Applications/Upscayl.app/Contents/Resources/bin/upscayl-bin"
MDL="/Applications/Upscayl.app/Contents/Resources/models"
RAW="$DIR/../wallpapers/raw"
OUT="$DIR/../wallpapers"

for IMG in "$RAW"/*; do
	[ -e "$IMG" ] || continue
	BNM="$(basename "${IMG%.*}")"
	[ -e "$OUT/${BNM}.avif" ] && continue
	$BIN \
		-i "$IMG" \
		-o "$OUT/${BNM}.png" \
		-m "$MDL" \
		-n "high-fidelity-4x" \
		-s 4
	avifenc "$OUT/${BNM}.png" "$OUT/${BNM}.avif"
	rm -f "$OUT/${BNM}.png"
done