#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"
RME="$DIR/../README.md"
SRC="$DIR/../.assets"

ALL=("$SRC"/thumbnail-java*.avif)
MAX=${#ALL[@]}
TXT=""
for NUM in "${!ALL[@]}"; do
	ALN=$( [ "$NUM" -lt $(( MAX - (MAX % 6 == 0 ? 6 : MAX % 6) )) ] && echo ' align="center"' || echo '' )
	TXT="${TXT}<a href=\"source/$(basename "${ALL[$NUM]}" | sed "s/^thumbnail-//")\"><img src=\".assets/$(basename "${ALL[$NUM]}")\"${ALN} width=\"16.6666666667%\"></a>"
done
awk -v BLK="<p>${TXT}</p>" '
	/<!-- START_JAVA -->/ { print; print BLK; skip=1; next }
	/<!-- CEASE_JAVA -->/ { skip=0 }
	!skip
' "$RME" > "$RME.tmp" && mv "$RME.tmp" "$RME"

ALL=("$SRC"/thumbnail-node*.avif)
MAX=${#ALL[@]}
TXT=""
for NUM in "${!ALL[@]}"; do
	ALN=$( [ "$NUM" -lt $(( MAX - (MAX % 6 == 0 ? 6 : MAX % 6) )) ] && echo ' align="center"' || echo '' )
	TXT="${TXT}<a href=\"source/$(basename "${ALL[$NUM]}" | sed "s/^thumbnail-//")\"><img src=\".assets/$(basename "${ALL[$NUM]}")\"${ALN} width=\"16.6666666667%\"></a>"
done
awk -v BLK="<p>${TXT}</p>" '
	/<!-- START_NODE -->/ { print; print BLK; skip=1; next }
	/<!-- CEASE_NODE -->/ { skip=0 }
	!skip
' "$RME" > "$RME.tmp" && mv "$RME.tmp" "$RME"

ALL=("$SRC"/thumbnail-python*.avif)
MAX=${#ALL[@]}
TXT=""
for NUM in "${!ALL[@]}"; do
	ALN=$( [ "$NUM" -lt $(( MAX - (MAX % 6 == 0 ? 6 : MAX % 6) )) ] && echo ' align="center"' || echo '' )
	TXT="${TXT}<a href=\"source/$(basename "${ALL[$NUM]}" | sed "s/^thumbnail-//")\"><img src=\".assets/$(basename "${ALL[$NUM]}")\"${ALN} width=\"16.6666666667%\"></a>"
done
awk -v BLK="<p>${TXT}</p>" '
	/<!-- START_PYTHON -->/ { print; print BLK; skip=1; next }
	/<!-- CEASE_PYTHON -->/ { skip=0 }
	!skip
' "$RME" > "$RME.tmp" && mv "$RME.tmp" "$RME"