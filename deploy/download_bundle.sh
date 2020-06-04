#!/bin/bash

# Get the directory path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Import the common script which will have the generic paramters for configuration
source "$DIR/common.sh"

# Define the parent directory where the file will be downloaded from s3 bucket
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
CODEDEPLOY_PARENT_DIR="$(dirname "$DIR")"

mkdir -p "$SERVICE_ROOT"
cp $CODEDEPLOY_PARENT_DIR/target/$SERVICE_NAME-*-SNAPSHOT.jar $SERVICE_ROOT/$SERVICE_NAME-*-SNAPSHOT.jar

echo "Successfully copied $SERVICE_NAME jar to $SERVICE_ROOT"
