#!/bin/bash
set -e

echo "Entered"

# Pinning to latest release at time of writing
quarto_file_name="quarto-0.1.292-amd64.deb"
quarto_url="https://github.com/quarto-dev/quarto-cli/releases/download/v0.1.292/${quarto_file_name}"



wget "${quarto_url}"

sudo dpkg -i "${quarto_file_name}"

echo "Successfully installed"

# Check install
quarto check
quarto env
quarto capabilities

echo "Successfully checked"

# Render directory
quarto render --execute-debug
