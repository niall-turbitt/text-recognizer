#!/bin/bash
set -uo pipefail
set +e

FAILURE=false

echo "Running integration test: ./training/tests/test_model_development.sh"
./training/tests/test_model_development.sh || FAILURE=true

if [ "$FAILURE" = true ]; then
  echo "Integration tests failed"
  exit 1
fi
echo "Integration tests passed"
exit 0
