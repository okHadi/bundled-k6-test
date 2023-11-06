#!/bin/bash

# Generate a purely random value for the tag
RANDOM_TAG="test_run_id=$(date +%s%N | sha256sum | base64 | head -c 16)"

# Run the K6 tests in parallel with the random tag
k6 run --out statsd --tag $RANDOM_TAG /k6/coreJourneys/journey1.js &
k6 run --out statsd --tag $RANDOM_TAG /k6/coreJourneys/journey2.js &

# Wait for both tests to finish
wait
