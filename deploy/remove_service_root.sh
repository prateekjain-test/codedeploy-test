#!/bin/bash

# Import the common script which will have the generic paramters for configuration
. $(dirname "$0")/common.sh

# Remove service root directory
rm -rf $SERVICE_ROOT
