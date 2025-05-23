#!/bin/sh
# Common Setup, DO NOT MODIFY
cd /app
set -e

# INSTALL PROJECT DEPENDENCIES
###############################################
# Always reinstall dependencies to ensure the environment matches the
# current source tree.
pip install --no-cache-dir -r requirements.txt -r requirements-dev.txt

# Install the package itself in editable mode so local changes are picked up
pip install --no-cache-dir -e .

# ENVIRONMENT CONFIGURATION
###############################################
# No additional configuration required for this project

###############################################
# BUILD
###############################################
echo "================= BUILD START ================="
# Nothing to compile for this pure Python project
echo "================= BUILD END ================="
