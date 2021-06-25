#!/bin/bash
set -e

# Pinning to latest release at time of writing
quarto_version="0.1.292"
quarto_file_name="quarto-${quarto_version}-amd64.deb"
quarto_url="https://github.com/quarto-dev/quarto-cli/releases/download/v${quarto_version}/${quarto_file_name}"

wget -q "${quarto_url}"

dpkg -i "${quarto_file_name}"

echo "Successfully installed"

# Check install
#quarto check
#quarto env
#quarto capabilities

#echo "Successfully checked"

# Render directory
quarto render --execute-debug

chown -R $(id -u): ./_site
