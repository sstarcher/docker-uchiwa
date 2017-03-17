#!/bin/bash
set -e
curl -s http://sensu.global.ssl.fastly.net/apt/pool/jessie/main/u/uchiwa/ | grep uchiwa | grep - | cut -d'>' -f2 | cut -d'_' -f2 | sort | tail -n1
