#!/bin/bash

set -x
set -e

THIS_SCRIPT="$(readlink -f "$0")"
BASE_DIR="$(dirname "$THIS_SCRIPT")"

DATA_DIR="${BASE_DIR}/docker-compose/docker-synapse_docker-compose"
YAML_FILE="${DATA_DIR}/synapse_setup.yaml"

"${BASE_DIR}/scripts/docker-compose_bash-scripts/docker_run_docker-compose.sh" \
	"$DATA_DIR" \
	"$YAML_FILE" \
	run --rm synapse_setup

