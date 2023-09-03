#!/usr/bin/with-contenv bash

set -euo pipefail

tailscale up --authkey=${TAILSCALE_AUTHKEY} --hostname=nextcloud --ssh
sleep infinity
