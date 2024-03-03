#!/bin/bash

set -uxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

cd "$SCRIPT_DIR" || exit

# Weird error
cargo run --release -- --foo x --foo y --bar z

# Panic
cargo run --release -- --foo x --foo y
