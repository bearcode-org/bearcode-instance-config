#!/usr/bin/env bash

set -e

# Install code-server
curl -fsSL https://code-server.dev/install.sh | sh -s -- --version=3.4.1

# Start code-server
code-server --bind-addr=0.0.0.0 --port=80
