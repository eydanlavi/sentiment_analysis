#!/bin/bash

# Setup Guide
# - Create the `venv` if it doesn’t exist
# - Activate the 'venv'
# - Install dependencies

# Create venv if it doesn't exist
if [ ! -d ".venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv .venv
fi

echo "Activating the virtual environment.."
source .venv/bin/activate

# Install dependencies
if [ -f "requirements.txt" ]; then
  echo "Installing dependencies..."
  pip install -r requirements.txt
fi

echo "Setup complete"
