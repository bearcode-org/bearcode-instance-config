#!/usr/bin/env bash

# Get script dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Update self
(cd $DIR && git fetch && git reset --hard origin/master)

# Symlink system service
ln -s "${DIR}/bearcode.service" /etc/systemd/system/bearcode.service

# Start and enable service
echo "Stating Bearcode Service..."
systemctl start bearcode
systemctl enable bearcode

echo "Ready to Code!"
