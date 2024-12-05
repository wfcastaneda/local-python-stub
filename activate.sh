#!/bin/bash

# Reference:
# pyenv: https://github.com/pyenv/pyenv
# pyenv-virtualenv: https://github.com/pyenv/pyenv-virtualenv

# Set Python version using pyenv
echo "Setting Python version to 3.10..."
pyenv local 3.10

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    pyenv virtualenv 3.10 venv
fi

# Activate virtual environment
pyenv activate venv

# Update pip
echo "Updating pip..."
pip install --upgrade pip

# Install requirements if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing/updating requirements..."
    pip install -r requirements.txt
fi

echo "Virtual environment activated and dependencies installed!"
