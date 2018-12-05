#!/bin/bash
set -euo pipefail

function main() {
  agrozyme.alpine.function.sh change_core
  agrozyme.alpine.function.sh empty_folder /run/mongodb
  exec mongod --config /etc/mongod.conf
}

main "$@"
