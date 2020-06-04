#!/bin/bash

# Get the directory path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Import the common script which will have the generic paramters for configuration
source "$DIR/common.sh"

# get the pid file for the service
PID_FILE=$SERVICE_ROOT/service.pid

if [ -f $PID_FILE ]; then
    cat $PID_FILE | xargs kill -9
    rm $PID_FILE
fi

echo "$SERVICE_NAME stopped successfully..."
