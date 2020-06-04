#!/bin/bash

# Import the independent service script which will
# independent service configuration using which we can
# run the codedeploy script with dynamic paramters
. ./properties.sh

# deployment home
DEPLOYMENT_HOME=/home/ubuntu/codedeploy

# define the service root path
SERVICE_ROOT=$DEPLOYMENT_HOME/$SERVICE_NAME
