#!/bin/bash

# Get the directory path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Import the common script which will have the generic paramters for configuration
source "$DIR/common.sh"

PID_FILE=$SERVICE_ROOT/service.pid

# shut down sevice if it is running already
if [ -f $PID_FILE ]; then
    cat $PID_FILE | xargs kill -9
    rm $PID_FILE
fi

# un asp.core application
cd $SERVICE_ROOT
java -jar $DEPLOYMENT_HOME/target/$SERVICE_NAME-*-SNAPSHOT.jar &> "/tmp/$SERVICE_NAME-service.log" &
echo $! > $PID_FILE

echo "$SERVICE_NAME started successfully..."
