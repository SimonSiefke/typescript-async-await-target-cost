#!/bin/bash

set -e

echo "benchmarking sync loop"
node sync.js

echo "------------------------------------------------------"

echo "benchmarking async/await loop"
node async.js

echo "------------------------------------------------------"
