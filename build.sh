#!/bin/sh
# Common Setup, DO NOT MODIFY
cd /app
set -e

# COMPLETE THE FOLLOWING SECTIONS
###############################################
# PROJECT DEPENDENCIES AND CONFIGURATION
###############################################
# TODO: Install project dependencies if needed based on relevant config/lock files in the repo.
# Note that we are developing the project, even if dependencies have been installed before, we need to install again to accommodate the changes we made.
# Install runtime and development dependencies
pip install --no-cache-dir -r requirements.txt -r requirements-dev.txt
# Install the package in editable mode for testing
pip install --no-cache-dir -e .
# TODO: Configure project and environment variables
# No additional configuration required for this project

###############################################
# BUILD
###############################################
echo "================= 0909 BUILD START 0909 ================="
# TODO: Build the project if needed. Note that we are developing the project and making changes to it, even if it has been build before, we need to build it again.
# Nothing to compile for this pure Python project
echo "================= 0909 BUILD END 0909 ================="
