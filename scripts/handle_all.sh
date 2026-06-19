#!/usr/bin/env bash

DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$DIR/handle_upscale.sh"
bash "$DIR/handle_readme.sh"