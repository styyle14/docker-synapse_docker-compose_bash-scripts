#!/bin/bash

set -x
set -e

THIS_SCRIPT="$(readlink -f "$0")"
BASE_DIR="$(dirname "$THIS_SCRIPT")"

DATA_DIR="${BASE_DIR}/docker-compose/docker-bitcoin_docker-compose"
YAML_FILE="${DATA_DIR}/bitcoin-qt.yaml"

"${BASE_DIR}/scripts/docker-compose_bash-scripts/docker_run_docker-compose.sh" \
	"$DATA_DIR" \
	"$YAML_FILE" \
	run --rm bitcoin-qt "${@:1}"

