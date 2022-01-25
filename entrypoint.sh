#!/bin/sh -l
set -e

APP_PATH="/kusion/bin/kusion"

subcommand=$1
workDir=$2
settings=$3
arguments=$4
filenames=$5
yes=$6
detail=$7

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
    if [ "$subcommand" = "apply" ]; then
        if [ "$yes" = "true" ]; then
            params="$params --yes"
        fi
        if [ "$detail" = "true" ]; then
            params="$params --detail"
        fi
    fi
fi

$APP_PATH $params