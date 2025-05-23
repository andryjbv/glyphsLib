#!/bin/bash
### COMMON SETUP; DO NOT MODIFY ###
set -e

# Redirect all output to files expected by the verification script
exec >/workspace/stdout.txt 2>/workspace/stderr.txt

# Allow tests to fail without aborting the script
set +e

# --- CONFIGURE THIS SECTION ---
# Replace this with your command to run all tests
run_all_tests() {
  echo "Running all tests..."
  pytest -vv tests/
  # always return success so script exits 0
  return 0
}

# Replace this with your command to run specific test files
run_selected_tests() {
  local test_files=("$@")
  echo "Running selected tests: ${test_files[@]}"
  pytest -vv "${test_files[@]}"
  return 0
}
# --- END CONFIGURATION SECTION ---


### COMMON EXECUTION; DO NOT MODIFY ###

# No args is all tests
if [ $# -eq 0 ]; then
  run_all_tests
  exit $?
fi

# Handle comma-separated input
if [[ "$1" == *","* ]]; then
  IFS=',' read -r -a TEST_FILES <<< "$1"
else
  TEST_FILES=("$@")
fi

# Run them all together
run_selected_tests "${TEST_FILES[@]}"

