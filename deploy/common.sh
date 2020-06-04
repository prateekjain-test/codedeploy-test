#!/bin/bash

# Define the root path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROOT_DIR="$(dirname "$DIR")"

# Import the independent service script which will
# independent service configuration using which we can
# run the codedeploy script with dynamic paramters
source "$DIR/properties.sh"

# deployment home
DEPLOYMENT_HOME=/home/ubuntu/codedeploy

# define the service root path
SERVICE_ROOT=$DEPLOYMENT_HOME/$SERVICE_NAME
