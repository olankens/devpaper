#!/usr/bin/env bash

set -euo pipefail

DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$DIR/handle-upscale.sh"
bash "$DIR/handle-preview.sh"
bash "$DIR/handle-thumbnails.sh"
bash "$DIR/handle-readme.sh"