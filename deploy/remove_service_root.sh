#!/bin/bash

TEST_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $TEST_DIR

# Import the common script which will have the generic paramters for configuration
source "$DIR/common.sh"

# Remove service root directory
rm -rf $SERVICE_ROOT
