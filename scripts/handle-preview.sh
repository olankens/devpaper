#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/../source"
OUT="$DIR/../.assets/preview-01.avif"
TMP="$(mktemp -d)"

mapfile -t ALL < <(find "$SRC" -maxdepth 1 -name "*.avif" | shuf | head -n 32)
for NUM in "${!ALL[@]}"; do
	PNG="${ALL[$NUM]}"
	echo $PNG
	magick "$PNG" \
		-strip \
		-resize 128x104^ \
		-gravity center \
		-crop 128x104+0+0 \
		+repage \
		"$TMP/$(basename "$PNG")"
done

mapfile -t ALL < <(find "$TMP" -name "*.avif" | shuf)
magick montage "${ALL[@]}" -tile 8x4 -geometry +0+0 png:- | avifenc --stdin --input-format png "$OUT"