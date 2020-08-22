#!/usr/bin/env bash

# Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Symlink system service
ln -s "${DIR}/bearcode.service" /etc/systemd/system/bearcode.service || echo "Service already symlinked"

# Start and enable service
systemctl start bearcode
systemctl enable bearcode
