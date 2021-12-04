#!/bin/sh -l
set -e

APP_NAME="go-cli-prototype"

showVersion=$1
echoInfo=$2
params=""

if [ "$showVersion" = "true" ]; then
    params+="-V "
fi

$APP_NAME $params $echoInfo