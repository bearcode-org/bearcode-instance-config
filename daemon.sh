#!/usr/bin/env bash

set -e

# Install code-server
# TODO: Move these scripts to another "startup" deamon
# curl -fsSL https://code-server.dev/install.sh | sh -s -- --version=3.5.0

# Start code-server
# TODO: Use Envoy to proxy https / http to this port
code-server --bind-addr=0.0.0.0 --port=3333 --auth none
