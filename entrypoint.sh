#!/bin/sh -l
set -e

APP_PATH="/kusion/bin/kusion"

subcommand=$1
workDir=$2
settings=$3
arguments=$4
filenames=$5

params=$subcommand


if [ "$subcommand" = "apply" ] || [ "$subcommand" = "compile" ]; then
    if [ -n "$workDir" ]; then
        params="$params -w $workDir"
    fi
    if [ -n "$settings" ]; then
        params="$params -Y $settings"
    fi
    if [ -n "$arguments" ]; then
        params="$params $arguments"
    fi
    if [ -n "$filenames" ]; then
        params="$params $filenames"
    fi
fi

$APP_PATH $params